# Disciplina: Data Architecture, Integration and Ingestion

## Professor: Ivan Ferrreira Gancev [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/ivan-gancev-8571b017/){:target="_blank"}

## Conteúdo da Disciplina
1. Pilares de arquitetura: persistência, integração e consumo
2. Estratégias de arquitetura
3. Tipos de tratamentos e arquiteturas
4. Exemplos de Bancos, diferenças e usos:
   1. Bancos Relacionais
   2. Bancos Colunares
5. Exemplos de Bancos, diferenças e usos:
   1. Bancos de documentos
   2. Bancos chave-valor
   3. Bancos de Grafos
6. Ingestão de dados, tratamentos e manipulações
7. Pipeline de dados, governança e qualidade
8. Integração de dados
   1. Cargas batch, ETL, vantagens e desvantagens
9.  Eventos, APIs, NRT e casos de uso
10. Arquiteturas para analytics
11. Boas práticas, recomendações e cuidados

# Trabalhos Desenvolvidos
## Trabalho em grupo
### Descrição:
Parte 1:
- Crie 3 tabelas para um site de venda de sapatos;
- Adicionar campos, se desejar;
- Alguns campos são conceituais, exercitem a modelagem;
- Entrega: Os scripts de criação das tabelas para MySQL, Cassandra e MongoDB;

Parte 2:
- Insira 10 registros distintos em cada uma das tabelas;
- Entrega: Os scripts de inserção dos registros para MySQL, Cassandra e MongoDB

Parte 3:
- Seu site comprou um concorrente. Ele te enviou 2 arquivos CSV com 20 produtos e 20 clientes;
- Entrega: Crie os arquivos CSV com a modelagem definida na parte 1 e os scripts de carga para 1 dos 3 bancos usados no exercício;

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/){:target="_blank"}
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/){:target="_blank"}
2. Victor Galvão [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/victor-galv%C3%A3o-74b63410a/){:target="_blank"}

### Ferramentas e Tecnologias Utilizadas
1. **[MongoDB](https://docs.mongodb.com/)**:
   - MongoDB é um banco de dados NoSQL orientado a documentos.
   - Utiliza documentos JSON flexíveis para armazenar dados, oferecendo alta escalabilidade e desempenho.
   - Amplamente utilizado em aplicações web, móveis e de IoT para armazenamento e processamento de dados não estruturados.
   - Ideal para casos de uso que exigem flexibilidade no esquema de dados e escalabilidade horizontal.

2. **[MySQL](https://dev.mysql.com/doc/)**:
   - MySQL é um sistema de gerenciamento de banco de dados relacional (RDBMS).
   - Oferece uma estrutura de tabelas com relações definidas, usando a linguagem SQL para consultas e manipulação de dados.
   - Conhecido por sua confiabilidade, desempenho e facilidade de uso, é amplamente utilizado em uma variedade de aplicativos, desde pequenos websites até grandes sistemas corporativos.
   - Suporta transações ACID (Atomicidade, Consistência, Isolamento e Durabilidade), garantindo integridade e consistência dos dados.

3. **[Cassandra](https://cassandra.apache.org/doc/)**:
   - Apache Cassandra é um banco de dados distribuído altamente escalável e de código aberto.
   - Projetado para lidar com grandes volumes de dados e fornecer alta disponibilidade sem pontos únicos de falha.
   - Utiliza uma arquitetura descentralizada, distribuindo os dados através de vários nós para garantir tolerância a falhas e escalabilidade linear.
   - Ideal para aplicativos que exigem baixa latência de leitura e gravação em grande escala, como redes sociais, análise de dados em tempo real e IoT.

### Entregas Realizadas
1. Cassandra
   1. `DDL_Cassandra.sql` - Criação do keyspace "avaliacao_grupo" com uma estratégia de replicação simples e definição das tabelas "Produto", "Cliente" e "Pedido"
   2. `DML_Cassandra.sql` - Inserção de dados nas tabelas "Produto", "Cliente" e "Pedido" dentro do keyspace "avaliacao_grupo".
2. MongoDB
   1. `DDL_Mongo.sql` - Criação de três coleções no banco de dados "avaliacao_grupo" do MongoDB: "Produto", "Cliente" e "Pedido".
   2. `DML_Mongo.sql` - Inserção dos dados nas coleções.
   3. `Importando Collections.txt` - Importação dos dados em formato JSON para as coleções criadas.
   4. `produtos.json` - Dados dos produtos
   5. `clientes.json` - Dados dos clientes
3. MySQL
   1. `DDL_MySQL.sql` - Criação do banco de dados "avaliacao_grupo" e definição das tabelas "Produto", "Cliente" e "Pedido"
   2. `DML_MySQL.sql` - Inserção de dados nas tabelas "Produto", "Cliente" e "Pedido" dentro do banco de dados "avaliacao_grupo".
   3. `Modelagem.xlsx` - Modelagem do banco de dados "avaliacao_grupo".

## Projeto Integrado
### Descrição:
A Startup QuantumFinance é uma Fintech, que esta entrando no mercado para concorrer com grandes players da área.
Durante nosso MBA de Data Science & Artificial Intelligence vamos aplicar ciência de dados e inteligência artificial para fomentar a expansão da Startup, em seus diversos segmentos e áreas de negócio.

A QuantumFinance está no mercado, e os investidores veem muito potencial na nova Fintech.
Porém, com o crescimento e o investimento acelerado existe a necessidade de melhor escalabilidade. Com este cenário em mente, a QuantumFinance contrata a SmartMind Analytics para construir a arquitetura de dados, visando a escalabilidade de todo o ambiente de dados, habilitando maior agilidade, estabilidade e confiança na entrega, acompanhando o crescimento da empresa.

Entrega 01:
Desenhar a arquitetura de dados para atender os requerimentos dos modelos na disciplina de Advanced Data Modeling.

A QuantumFinance aprova o desenho de solução e contrata a consultoria SmartMind Analytics para implementar o MVP da arquitetura, iniciando com um dos requerimentos abaixo. 
Entrega 02: Desenvolver um (1) pipeline do processos de ingestão de um dos requisitos abaixo:
1. Cadastro de cliente com fotos e assinatura eletrônica, e informações de contatos do cliente
2. Telas e relatórios para análise das transações da conta (exemplo: análise por período e por tipo de movimento)

### Integrantes da Equipe
1. [Fabio Souza](https://www.linkedin.com/in/fabiomarcelosouza/)
2. [Felipe Scudeller](https://www.linkedin.com/in/felipe-scudeller/)
3. [Letícia Ribeiro](https://www.linkedin.com/in/let%C3%ADcia-ribeiro-silva/)
4. [Raffael Paiva](https://www.linkedin.com/in/raffael-oliveira-paiva/)

### Ferramentas e Tecnologias Utilizadas
1. **[MongoDB](https://docs.mongodb.com/)**:
   - MongoDB é um banco de dados NoSQL orientado a documentos.
   - Utiliza documentos JSON flexíveis para armazenar dados, oferecendo alta escalabilidade e desempenho.
   - Amplamente utilizado em aplicações web, móveis e de IoT para armazenamento e processamento de dados não estruturados.

2. **[MySQL](https://dev.mysql.com/doc/)**:
   - MySQL é um sistema de gerenciamento de banco de dados relacional (RDBMS).
   - Oferece uma estrutura de tabelas com relações definidas, usando a linguagem SQL para consultas e manipulação de dados.
   - Conhecido por sua confiabilidade, desempenho e facilidade de uso, é amplamente utilizado em uma variedade de aplicativos, desde pequenos websites até grandes sistemas corporativos.

3. **[Apache Hadoop HDFS](https://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-hdfs/HdfsUserGuide.html)**:
   - O Hadoop HDFS (Hadoop Distributed File System) é um sistema de arquivos distribuído projetado para armazenar grandes volumes de dados em clusters de computadores.
   - Ele fornece alta taxa de transferência de dados e tolerância a falhas, permitindo o processamento eficiente de dados distribuídos em grandes escalas.

4. **[Apache NiFi](https://nifi.apache.org/docs.html)**:
   - Apache NiFi é uma plataforma de código aberto para automação de fluxo de dados em tempo real e gestão de dados.
   - Oferece uma interface gráfica para criar, monitorar e gerenciar pipelines de dados de maneira visual e intuitiva.
   - Amplamente utilizado para integrar sistemas heterogêneos, processar e transformar dados em tempo real, bem como gerenciar o fluxo de dados em ambientes distribuídos.

### Entregas Realizadas
1. 0_README.txt - Instruções para deploy do pipeline.
2. 1_clientes_criacao_pastas.txt - Criação do contêiner Docker "namenode" e criação dos diretórios no sistema de arquivos distribuído Hadoop (HDFS).
3. 2_clientes_transf_arq.txt - Cópia dos arquivos locais para o contêiner Docker chamado "namenode" e cópia para o sistema de arquivos distribuído Hadoop (HDFS), organizando os arquivos em diferentes diretórios.
4. arquitetura_dados.jpeg - Arquitetura de dados do pipeline.
![Arquitetura de dados do pipeline](./5DTS%20-%20Trabalho%20-%20Projeto%20Integrado/Entregaveis/arquitetura_dados.jpeg)
5. clientes.csv - Dados dos clientes
6. ddl_mongo.sql - Criação das coleções necessárias no banco de dados MongoDB.
7. ddl_mysql.sql - Inserção dos dados nas coleções do MongoDB.
8. decs.tar - PDFs dos documentos assinados pelos clientes.
9.  fotos.tar - Fotos dos clientes.
10. template_nifi_projeto_integrado_final.xml - XML exportado do pipeline implementado no NiFi.