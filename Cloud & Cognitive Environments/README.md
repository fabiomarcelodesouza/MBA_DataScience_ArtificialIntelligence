# Disciplina: Cloud & Cognitive Environments

- [Disciplina: Cloud \& Cognitive Environments](#disciplina-cloud--cognitive-environments)
  - [Professor: Elthon Manhas de Freitas ](#professor-elthon-manhas-de-freitas-)
  - [Conteúdo da Disciplina](#conteúdo-da-disciplina)
- [Cases Desenvolvidos](#cases-desenvolvidos)
  - [Case: Cloud and Cognitive Environments](#case-cloud-and-cognitive-environments)
    - [Descricao do Case:](#descricao-do-case)
    - [Integrantes da Equipe](#integrantes-da-equipe)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas)
    - [Entregas Realizadas](#entregas-realizadas)

## Professor: Elthon Manhas de Freitas [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/elthonmf/)

## Conteúdo da Disciplina
Esta disciplina visa fornecer aos estudantes de Data Science uma compreensão das tecnologias de nuvem e ambientes cognitivos, capacitando-os a utilizar recursos de processamento flexível e inteligência artificial em modelos de machine learning e em suas análises de dados.

Ao longo de quatro encontros, os alunos explorarão conceitos fundamentais de computação em nuvem, armazenamento flexível, plataformas cognitivas e API's de IA prontas, com uma ênfase significativa em atividades práticas realizadas nas plataformas Azure e GCP.

# Cases Desenvolvidos
## Case: Cloud and Cognitive Environments
### Descricao do Case:
1. Parte 01 Análises Big Data na nuvem
   1. Utilizando apenas ferramentas na nuvem, faça análise de dados "GIGANTES" em seu ambiente utilizando um Notebook Python. Não serão aceitas entregas que não sejam via Notebook.
   2. Avalie as corridas dos táxis amarelos de NY e responda:
      - Em 2011, como foram as quantidades de corridas de acordo com o dia da semana? (0,5)
      - Em 2011, como foram os valores das corridas de acordo com o dia da semana? (0,5)
      - Em 2011, como foram os valores das corridas de acordo com a quantidade de passageiros? (0,25)
      - Em 2011, como foram as gorjetas de acordo com o dia da semana? (0,25)

   3. Ainda neste conjunto de dados, avalie a evolução ano a ano até 2021
      - Total absoluto de corridas (0,5)
      - Total relativo de corridas por dia da semana (0,5)
      - Total relativo de corridas por período do dia (1,5)

   4. (pesquisar sobre extração de hora)
   5. Todas as análises devem ser em formato tabular e gráfico.

2. Parte 02 - Serviços de ML na nuvem para servir modelos
   1. Criar um modelo de classificação em um notebook Python que, de acordo com os dados da corrida, consiga prever se o motorista irá ganhar alguma gorjeta (1,0);
      - Será avaliado o uso de plataforma em nuvem no apoio do processo, logo, o modelo não será avaliado em sua qualidade.
   2. Servir esse modelo na Azure Cloud, como visto em aula (3,0);
      - Será avaliado o uso de plataforma em nuvem no apoio ao processo de deploy de modelo. Como existem inúmeras formas de deploy, será avaliado apenas o deploy exatamente como feito em aula;
      - Colocar em um doc Word ou PPT os passos utilizados para o deploy;

3. Parte 03 Integração com modelos LLM
   1. Criar no notebook uma integração com uma API de LLM (em aula vimos o PaLM da GCP) que consiga fazer interpretações analíticas, apoiando o cientista de dados.
   2. Para isso, será necessário montar um prompt dinamicamente com os dados buscados no Big Query, e então, integrar com esse serviço.
      - Obtenção de dados e montagem de prompt (1,5)
      - Chamada de API e exibição do retorno (0,5)
   3. Exemplo fictício de prompt:
      Faça uma análise interpretativa sobre as corridas de táxi de NY considerando:
      - Em 1998 foram 44565464 de viagens e em 1999 foram 64565464 de viagens;
      - O tempo médio de corridas em 1998 era de 48 minutos e em 1999 era de 69 minutos;
      - As viagens em 1998 se concentravam nos dias da semana, enquanto que em 1999 a distribuição era
      mais uniforme.

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)
3. Victor Galvão [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/victor-galv%C3%A3o-74b63410a/)

### Ferramentas e Tecnologias Utilizadas
1. **Python [![Python](https://img.shields.io/badge/Python-Programming-yellow?style=flat-square&logo=python)](https://www.python.org/)**
   - Python é uma linguagem de programação de alto nível, interpretada e de propósito geral, amplamente utilizada em ciência de dados, desenvolvimento web, automação, entre outros.
   - É conhecida por sua sintaxe simples e legibilidade, tornando-a ideal para iniciantes e profissionais.
   - Possui uma vasta biblioteca padrão e uma grande variedade de pacotes de terceiros para diferentes fins.

2. **Jupyter Notebook [![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-Interactive_Computing-orange?style=flat-square&logo=jupyter)](https://jupyter.org/)**
   - Jupyter Notebook é uma aplicação web de código aberto que permite criar e compartilhar documentos interativos que contêm código, visualizações e texto explicativo.
   - É amplamente utilizado em ciência de dados e pesquisa acadêmica para prototipagem rápida, exploração de dados, experimentação e apresentação.
   - Suporta várias linguagens de programação, incluindo Python, R, Julia e Scala, entre outras.

3. **VS Code [![VS Code](https://img.shields.io/badge/VS_Code-IDE-blue?style=flat-square&logo=visual-studio-code)](https://code.visualstudio.com/)**
   - Visual Studio Code é um ambiente de desenvolvimento integrado (IDE) leve, gratuito e de código aberto desenvolvido pela Microsoft.
   - Oferece suporte para várias linguagens de programação, incluindo Python, JavaScript, HTML, CSS, entre outras.
   - Possui recursos avançados, como realce de sintaxe, IntelliSense, depuração integrada, controle de versão e extensibilidade.

4. **Azure [![Azure](https://img.shields.io/badge/Azure-Cloud_Computing-blue?style=flat-square&logo=microsoft-azure)](https://azure.microsoft.com/)**
   - Azure é uma plataforma de computação em nuvem oferecida pela Microsoft.
   - Oferece uma ampla gama de serviços de computação, armazenamento, análise de dados, inteligência artificial, desenvolvimento de aplicativos e muito mais.
   - É amplamente utilizado por empresas para implementar, gerenciar e escalar aplicativos e serviços na nuvem.

5. **Azure ML Studio [![Azure ML Studio](https://img.shields.io/badge/Azure_ML_Studio-Machine_Learning-orange?style=flat-square&logo=microsoft-azure)](https://studio.azureml.net/)**
   - Azure ML Studio é uma plataforma de machine learning baseada na nuvem oferecida pela Microsoft.
   - Permite aos usuários criar, treinar e implantar modelos de machine learning usando uma interface gráfica intuitiva.
   - Oferece uma variedade de algoritmos de machine learning pré-construídos e integração com outras ferramentas do ecossistema Azure.

6. **Pandas [![Pandas](https://img.shields.io/badge/Pandas-Data_Manipulation-blue?style=flat-square&logo=pandas)](https://pandas.pydata.org/)**
   - Pandas é uma biblioteca Python de código aberto que fornece estruturas de dados de alto desempenho e ferramentas de análise de dados.
   - É amplamente utilizado para limpeza, transformação e manipulação de conjuntos de dados tabulares.
   - Oferece funcionalidades poderosas para indexação, seleção, agregação e visualização de dados.

7. **Google Cloud BigQuery [![Google Cloud BigQuery](https://img.shields.io/badge/Google_Cloud_BigQuery-Data_Warehouse-blue?style=flat-square&logo=google-cloud)](https://cloud.google.com/bigquery/)**
   - Google Cloud BigQuery é um serviço de data warehouse oferecido pelo Google Cloud Platform.
   - Permite executar consultas SQL em grandes conjuntos de dados de forma rápida e escalável, sem a necessidade de configurar ou gerenciar infraestrutura.
   - É amplamente utilizado para análise de dados, business intelligence, machine learning e análise de streaming.

### Entregas Realizadas
1. `1- READ_ME.txt` - Intruções da entrega
2. `2-[Entrega]_COG_TRABALHO(Parte1_Parte_2_Parte3).ipynb` - Jupyter notebook com a solução dos problemas propostas
3. `3-MLOPS - Passos para o Deploy.pdf` - Manual de deploy da solução
4. `4-MLOPS - Passos para o Deploy.pptx` - Manual de deploy da solução
5. `5-score_json.py` - Validação de score dos modelos