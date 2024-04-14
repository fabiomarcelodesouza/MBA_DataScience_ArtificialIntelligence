# Disciplina: Data Processing with Python

- [Disciplina: Data Processing with Python](#disciplina-data-processing-with-python)
  - [Professor: Dheny Fernandes ](#professor-dheny-fernandes-)
  - [Conteúdo da Disciplina](#conteúdo-da-disciplina)
- [Cases Desenvolvidos](#cases-desenvolvidos)
  - [Case: EDA (Exploratory Data Analysis) utilizando Python](#case-eda-exploratory-data-analysis-utilizando-python)
    - [Descrição do Case:](#descrição-do-case)
    - [Integrantes da Equipe](#integrantes-da-equipe)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas)
    - [Entregas Realizadas](#entregas-realizadas)

## Professor: Dheny Fernandes [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/dhenyfernandes/)

## Conteúdo da Disciplina
1. Introdução I ao Python
2. Introdução II ao Python
3. Programação Funcional e Orientação a Objetos
4. Numpy
5. Pandas
6. Visualização de Dados

# Cases Desenvolvidos 
## Case: EDA (Exploratory Data Analysis) utilizando Python
### Descrição do Case:
Realização de uma análise completa de um conjunto de dados utilizando Python, onde tivemos que realizar uma análise detalhada de um dataset (https://raw.githubusercontent.com/ageron/handson-ml2/master/datasets/housing/housing.csv) utilizando a linguagem de programação Python. O conjunto de dados consiste em informações sobre habitação, com várias variáveis como idade, localização geográfica, população, número de quartos, valor médio das casas, entre outras.

Durante esse case, tivemos que realizar as seguintes atividades:
1. Leitura do Conjunto de Dados - Leitura do conjunto de dados para o script Python, utilizando bibliotecas como Pandas para manipulação de dados.
2. Estatísticas Básicas - Calculo de estatísticas básicas, como média, mediana, desvio padrão, etc.
3. Tratamento de Zeros - Verificação e tratamento da presença de zeros no conjunto de dados, aplicando estratégias adequadas para lidar com esses valores.
4. Exploração da Variável "median_house_value" - Exploração mais aprofundada da variável "median_house_value", analisando diferentes aspectos, como distribuição da população, localização geográfica, etc.
5. Análise de registros: Identificação de concentração de registros em faixas específicas de idade e localização geográfica.
   1. Explorando a variável "median_house_value" (parte 1 e parte 2): Análise da variabilidade da informação em diferentes faixas de valores e idade.
   2. Explorando a variável "median_house_value" (parte 3 e parte 4): Análise de outliers e impacto das variáveis nas demais colunas.
   3. Medindo o impacto das variáveis nas demais colunas: Identificação de grupos de alto impacto e correlações entre variáveis.
   4. Resultados que chamam atenção durante a exploração: Destaque para observações relevantes durante a análise.
6. Encoding e Features - Codificação de variáveis categóricas e criação novas features.
7. Remoção de Outliers - Utilizando o método Interquartil (IQR), remoção de outliers do conjunto de dados.
8. Criação de Bases de Treino e Teste - Divisão do conjunto de dados em bases de treino e teste, utilizando uma proporção de 80:20.
9. Normalização de Dados - Os números serão colocados na mesma escala para garantir que todas as variáveis tenham o mesmo peso durante o treinamento do modelo.
10.  Treinamento do Modelo e Avaliação - Finalmente, treinamento de um modelo de aprendizado de máquina (regressão linear) e medição de sua precisão usando métricas como R², MAE e RMSE.

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)

### Ferramentas e Tecnologias Utilizadas
1. **Jupyter Notebook [![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-Interactive_Notebooks-blue?style=flat-square&logo=jupyter)](https://jupyter.org/)**
   - Jupyter Notebook é uma aplicação web de código aberto que permite criar e compartilhar documentos interativos que contêm código, visualizações e texto narrativo.
   - Suporta várias linguagens de programação, incluindo Python, R e Julia.
   - É amplamente utilizado em ciência de dados, análise exploratória de dados, modelagem estatística, aprendizado de máquina e muito mais.
   - Oferece uma experiência flexível e interativa para desenvolver e comunicar análises de dados e resultados de pesquisa.
  
2. **Google Colab [![Google Colab](https://img.shields.io/badge/Google_Colab-Notebooks-yellow?style=flat-square&logo=google-colab)](https://colab.research.google.com/)**
   - Google Colab é uma plataforma gratuita baseada em nuvem que permite escrever e executar código Python em notebooks Jupyter.
   - Oferece acesso gratuito a GPUs e TPUs para computação de alto desempenho.
   - É amplamente utilizado em ciência de dados, aprendizado de máquina, pesquisa acadêmica e educação.
   - Permite colaboração em tempo real e compartilhamento fácil de notebooks com outras pessoas.
  
3. **Python [![Python](https://img.shields.io/badge/Python-Programming-blue?style=flat-square&logo=python)](https://www.python.org/)**
   - Python é uma linguagem de programação de alto nível, interpretada e de propósito geral.
   - É conhecida por sua sintaxe simples e legibilidade, o que a torna uma ótima escolha para iniciantes e profissionais.
   - Possui uma vasta biblioteca padrão e suporte a uma variedade de pacotes para diferentes fins, desde desenvolvimento web até análise de dados.
   - É uma das linguagens mais populares para desenvolvimento de software, ciência de dados e automação de tarefas.

4. **Pandas [![Pandas](https://img.shields.io/badge/Pandas-Data_Manipulation-green?style=flat-square&logo=pandas)](https://pandas.pydata.org/)**
   - Pandas é uma biblioteca de código aberto para manipulação e análise de dados em Python.
   - Oferece estruturas de dados flexíveis e ferramentas para trabalhar com dados tabulares e séries temporais.
   - É amplamente utilizado em ciência de dados, análise financeira, processamento de dados biológicos e muito mais.
   - Possui funcionalidades poderosas para limpeza, transformação, agregação e visualização de dados.

5.  **NumPy [![NumPy](https://img.shields.io/badge/NumPy-Scientific_Computing-yellow?style=flat-square&logo=numpy)](https://numpy.org/)**
   - NumPy é uma biblioteca fundamental para computação científica em Python.
   - Introduz o tipo de dado array multidimensional (ndarray), que é eficiente para operações numéricas em grande escala.
   - Oferece funções para álgebra linear, transformada de Fourier, geração de números aleatórios e muito mais.
   - É usado em conjunto com outras bibliotecas, como Pandas e Matplotlib, para análise de dados e visualização.

6.  **Matplotlib [![Matplotlib](https://img.shields.io/badge/Matplotlib-Data_Visualization-orange?style=flat-square&logo=matplotlib)](https://matplotlib.org/)**
   - Matplotlib é uma biblioteca de visualização de dados em Python.
   - Permite criar gráficos estáticos, gráficos interativos e até mesmo animações.
   - Oferece uma ampla variedade de estilos e configurações para personalizar a aparência dos gráficos.
   - É frequentemente usado em conjunto com NumPy e Pandas para criar visualizações informativas a partir de dados.

7.  **Scikit-learn [![Scikit-learn](https://img.shields.io/badge/Scikit--learn-Machine_Learning-purple?style=flat-square&logo=scikit-learn)](https://scikit-learn.org/)**
   - Scikit-learn é uma biblioteca de aprendizado de máquina em Python.
   - Fornece uma variedade de algoritmos de classificação, regressão, clustering e pré-processamento de dados.
   - É projetado para ser simples e eficiente, facilitando o desenvolvimento e a avaliação de modelos de aprendizado de máquina.
   - Integrado com outras bibliotecas populares, como NumPy, Pandas e Matplotlib, para análise de dados e visualização.

8.  **Seaborn [![Seaborn](https://img.shields.io/badge/Seaborn-Statistical_Visualization-lightgrey?style=flat-square&logo=seaborn)](https://seaborn.pydata.org/)**
   - Seaborn é uma biblioteca de visualização estatística em Python baseada no Matplotlib.
   - Facilita a criação de gráficos estatísticos informativos e atrativos.
   - Possui suporte para visualização de distribuições univariadas e bivariadas, relacionamentos entre variáveis e muito mais.
   - É comumente usado em conjunto com Pandas e Matplotlib para explorar e comunicar padrões em dados.

### Entregas Realizadas
1. `Trabalho_EDA_Python.ipynb` - Jupyter Notebook com a resolução dos desafios propostos