# Sumário

1. [Introdução](#Plataforma-de-Análise-de-Crédito)
2. [Características](#características)
3. [Configuração](#configuração)
4. [Instalação](#instalação)
    - [Instalação usando contêineres](#instalação-usando-contêineres)
    - [Instalação sem contêineres (EC2)](#instalação-sem-contêineres-ec2)
5. [Contribuição](#contribuição)
6. [Licença](#licença)

# Plataforma de Análise de Crédito

Esta aplicação Flask é uma plataforma de gerenciamento de modelos que realiza análises de crédito. Utiliza modelos de regressão linear, clusterização e classificação para predizer valores baseados em dados submetidos por um formulário.

## Características

- Submissão de dados de crédito através de um formulário web.
- Integração com APIs externas para regressão linear, clusterização e classificação.
- Dashboard para visualização dos resultados das predições.

## Configuração

Defina as seguintes variáveis de ambiente (elas podem ser criadas como variáveis de ambiente ou definidas em um arquivo .env):

- `API_REGRESSAO_LINEAR_URL="http://endereco_ip:5001"`
- `API_CLUSTERIZACAO_URL="http://endereco_ip:5002"`
- `API_CLASSIFICACAO_URL="http://endereco_ip:5003"`
- `MODEL_MANAGER_URL="http://endereco_ip:5100"`
- `dbname=""`
- `dbuser=""`
- `dbpassword=""`
- `dbhost=""`

## Instalação usando contêineres

Para instalar a aplicação em contêineres usando Podman, execute o comando `podman compose up` no diretório raiz do projeto. Para instalar e configurar o Podman, consulte a [documentação oficial](https://podman.io/docs/installation).

## Instalação sem contêineres (EC2)

Para instalar a aplicação diretamente em uma instância EC2, siga os passos abaixo:

## Instalação do Model Manager:
1. Clone o repositório:
```bash
git clone https://github.com/fabiomarcelodesouza/plataforma_analise_credito
```

2. Acesse o diretório do Model Manager
```bash
cd plataforma_analise_credito/model_manager/app
```

3. Crie o ambiente virtual
```bash
python3 -m venv venv
```

4. Ative o ambiente virtual
```bash
source venv/bin/activate
```

5. Instale as dependências
```bash
pip install --no-cache-dir -r requirements.txt
```

6. Instale o Gunicorn
```bash
pip install gunicorn
```

7. Teste o Gunicorn
```bash
gunicorn -b 0.0.0.0:5000 app:app
```

8. Adicione o grupo www-data e o usuário ec2-user ao grupo www-data:
```bash
sudo groupadd www-data
sudo usermod -aG www-data ec2-user
```

9. Crie um arquivo de serviço systemd para o Model Manager:
```bash
sudo nano /etc/systemd/system/pg-model-manager.service
```

10. Cole o seguinte conteúdo no arquivo (este arquivo de serviço configura e gerencia um serviço que executa uma aplicação Flask (ou similar) chamada "Plataforma Cognitiva - Model Manager" usando Gunicorn como servidor de aplicativos. Ele garante que o serviço seja iniciado automaticamente durante a inicialização do sistema e reiniciado se falhar):
```bash
[Unit]
Description=Plataforma Cognitiva - Model Manager
After=network.target

[Service]
User=ec2-user
Group=www-data
WorkingDirectory=/home/ec2-user/plataforma_analise_credito/model-manager/app
ExecStart=/home/ec2-user/plataforma_analise_credito/model-manager/app/venv/bin/gunicorn -b localhost:5000 app:app
Restart=always

[Install]
WantedBy=multi-user.target
```

11. Ative o serviço e inicie o Model Manager:
```bash
sudo systemctl daemon-reload
sudo systemctl enable pg-model-manager
sudo systemctl start pg-model-manager
sudo systemctl status pg-model-manager
```

12. Caso precise atualizar algum arquivo, para que as alterações tenham efeito é necessário reinicializar o serviço e, opcionalmente, pode-se acompanhar os logs pelos comandos abaixo:
```bash
sudo systemctl daemon-reload
sudo systemctl restart pg-model-manager
sudo journalctl -u pg-model-manager -f
```

13. Instale o Nginx:
```bash
sudo yum install nginx
```

14. Crie um arquivo de configuração do Nginx para o Model Manager:
```bash
sudo nano /etc/nginx/conf.d/model_manager.conf
```

15. Cole o seguinte conteúdo no arquivo (este bloco de configuração do servidor Nginx define um servidor que escuta na porta 5100 e encaminha todas as solicitações para um servidor Flask (ou similar) em execução em localhost:5000, preservando os cabeçalhos relevantes. Isso é útil para usar o Nginx como um proxy reverso para servir solicitações HTTP para um aplicativo web):
```bash
server {
    listen 5100;
    server_name _;
    access_log  /var/log/nginx/access.log;
    error_log  /var/log/nginx/error.log;

    location / {
        proxy_pass         http://127.0.0.1:5000/;
        proxy_redirect     off;

        proxy_set_header   Host                 $host;
        proxy_set_header   X-Real-IP            $remote_addr;
        proxy_set_header   X-Forwarded-For      $proxy_add_x_forwarded_for;
        proxy_set_header   X-Forwarded-Proto    $scheme;
    }
}
```

16. Reinicie o Nginx para aplicar as alterações:
```bash
sudo systemctl restart nginx
```

Repita os passos 2 a 8 para instalar e configurar as APIs de regressão linear, clusterização e classificação nos respectivos diretórios regressao_linear/app, clusterizacao/app e classificacao/app. Certifique-se de alterar as portas e os caminhos dos diretórios conforme necessário.

Ao concluir todos os passos, sua aplicação de análise de crédito estará instalada e pronta para uso. Você pode acessar o dashboard através do endereço IP da sua instância EC2 e a porta configurada.d

Abaixo alguns comandos úteis para compilar e rodar imagens no docker:
```bash
sudo yum install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
docker info

#buildar as imagens
cd model-manager/app
docker build -t model-manager .

cd regressao_linear/app
docker build -t api_regressao_linear .

cd clusterizacao/app
docker build -t api_clusterizacao .

cd classificacao/app
docker build -t api_classificacao .

#criar a rede
docker network create rede-plataforma-cognitiva

#xecutar as imagens
docker run -p 5000:5000 -d --name model-manager --network rede-plataforma-cognitiva --rm model-manager
docker run -p 5001:5001 -d --name api_regressao_linear --network rede-plataforma-cognitiva --rm api_regressao_linear
docker run -p 5002:5002 -d --name api_clusterizacao --network rede-plataforma-cognitiva --rm api_clusterizacao
docker run -p 5003:5003 -d --name api_classificacao --network rede-plataforma-cognitiva --rm api_classificacao
```

## Contribuição
Contribuições são bem-vindas! Para contribuir:

1. Faça um Fork do projeto.
2. Crie uma Branch para sua Feature (git checkout -b feature/AmazingFeature).
3. Faça commit de suas mudanças (git commit -m 'Add some AmazingFeature').
4. Faça Push para a Branch (git push origin feature/AmazingFeature).
5. Abra um Pull Request.

## Licença
Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.
