# Disciplina: Natural Language Processing

- [Disciplina: Natural Language Processing](#disciplina-natural-language-processing)
  - [Professor: Thiago Nogueira ](#professor-thiago-nogueira-)
  - [Conteúdo da Disciplina](#conteúdo-da-disciplina)
- [Cases Desenvolvidos](#cases-desenvolvidos)
  - [Avaliação Parcial da Disciplina](#avaliação-parcial-da-disciplina)
    - [Descricao do Case:](#descricao-do-case)
    - [Integrantes da Equipe](#integrantes-da-equipe)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas)
    - [Entregas Realizadas](#entregas-realizadas)
- [Cases Desenvolvidos](#cases-desenvolvidos-1)
  - [Case: Projeto Integrado - Quantum Finance](#case-projeto-integrado---quantum-finance)
    - [Descricao do Case:](#descricao-do-case-1)
    - [Integrantes da Equipe](#integrantes-da-equipe-1)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas-1)
    - [Entregas Realizadas](#entregas-realizadas-1)

## Professor: Thiago Nogueira [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/thnogueira/)

## Conteúdo da Disciplina
1. Representação e pré-processamento
2. Classificação
3. Embeddings
4. Attention is all you need
5. Entendendo os LLMs
6. Trabalhando com LLMs

# Cases Desenvolvidos
## Avaliação Parcial da Disciplina
### Descricao do Case:
Resolver o exercício de classificação de textos disponibilizado em

https://colab.research.google.com/drive/1kgn5kazmQ3BQ6BJPv6F288Xaep9W9-xX?usp=sharing

Importante: A entrega deverá ser o Jupyter Notebook preenchido

Valor do trabalho: 1 ponto na média final

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)
3. Felipe Sá [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-oliveira-s%C3%A1/)

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

4. **Pandas [![Pandas](https://img.shields.io/badge/Pandas-Data_Manipulation-blue?style=flat-square&logo=pandas)](https://pandas.pydata.org/)**
   - Pandas é uma biblioteca Python de código aberto que fornece estruturas de dados de alto desempenho e ferramentas de análise de dados.
   - É amplamente utilizado para limpeza, transformação e manipulação de conjuntos de dados tabulares.
   - Oferece funcionalidades poderosas para indexação, seleção, agregação e visualização de dados.

5. **Scikit-learn [![Scikit-learn](https://img.shields.io/badge/Scikit_learn-Machine_Learning-yellowgreen?style=flat-square&logo=scikit-learn)](https://scikit-learn.org/)**
   - Scikit-learn é uma biblioteca de aprendizado de máquina em Python que oferece uma ampla variedade de algoritmos de classificação, regressão, clustering e pré-processamento de dados.
   - É projetado para ser simples e eficiente, com uma API consistente e fácil de usar.
   - Inclui ferramentas para avaliação de modelos, seleção de recursos, validação cruzada e muito mais.

### Entregas Realizadas
1. `[ENTREGA]_NLP_Aula_2_Exercicio_v_2023_2.ipynb` - Jupyter Notebook com a solução dos problemas propostos

# Cases Desenvolvidos
## Case: Projeto Integrado - Quantum Finance
### Descricao do Case:
A QuantumFinance tem um canal de atendimento via chat e precisar classificar os assuntos dos atendimentos para melhorar as tratativas dos chamados dos clientes. O canal recebe textos abertos dos clientes relatando o problema e/ou dúvida e depois é direcionado para alguma área especialista no assunto para uma melhor tratativa.
O desafio de sua equipe é:

**Parte 1** - Criar um modelo classificador de assuntos aplicando técnicas tradicionais de NLP, que consiga classificar através de um texto o assunto conforme disponível na base de dados [1] para treinamento e validação do modelo seu modelo.

**Parte 2** - Realizar a tarefa de classificação apresentada no ítem anterior com a utilização IA Generativa, , utilizando as técnicas de prompt engineering discutidas em sala.

**Parte 3** (Extra) - Utilizar a IA Generativa para fazer uma classificação livre de assuntos e avaliar qualitativamente os
resultados.

Observação: Nas partes 2 e 3 do trabalho utilizar a base de dados estratificada disponibilizada em [2]. Esta amostra possui 200 registros de cada categoria. Este ajuste deve-se à limitação do número de tokens disponibilizados no modo gratuito da APl da openAl. Para fazer • desenvolvimento de prompt, busque rodar com poucos exemplos e ir incrementando aos poucos, a medida em que vá melhorando.
[1] - https://raw.githubusercontent.com/thiagonogueira/datasets/main/tickets_reclamacoes_classificados_one_line.csv 
[2] - https://raw.githubusercontent.com/thiagonogueira/datasets/main/tickets_reclamacoes_classificados_one_line_generative.csv

Jupyter Notebook:
O notebook deverá estar bem organizado com seções claras e textos que facilitem a compreensão da análise e decisões tomadas e que permita a obtenção do resultado final a partir do dataset disponibilizado. Utilize o notebook de template para a entrega.

O modelo precisar atingir um score na métrica F1 Score superior a 75%. Utilize o dataset [1] para treinar e testar o modelo, separe o dataset em duas amostras (75% para treinamento e 25% para teste com o randon_state igual a 42).

Fique à vontade para testar e explorar as técnicas de pré-processamento, abordagens de NLP, algoritmos e bibliotecas, mas explique e justifique as suas decisões durante o desenvolvimento.

Importante: parte significativa da avaliação do resultado será feita com a execução do notebook. Desta forma, é importante que todas as células executem corretamente e que os resultados sejam integralmente reprodutíveis.

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)
3. Victor Galvão [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/victor-galv%C3%A3o-74b63410a/)

### Ferramentas e Tecnologias Utilizadas
1. **Python [![Python](https://img.shields.io/badge/Python-Programming-yellow?style=flat-square&logo=python)](https://www.python.org/)**
   - Python é uma linguagem de programação de alto nível, interpretada e de propósito geral, amplamente utilizada em ciência de dados, desenvolvimento web, automação, entre outros.
   - É conhecida por sua sintaxe simples e legibilidade, tornando-a ideal para iniciantes e profissionais.
   - Possui uma vasta biblioteca padrão e uma grande variedade de pacotes de terceiros para diferentes fins.

2. **VS Code [![VS Code](https://img.shields.io/badge/VS_Code-IDE-blue?style=flat-square&logo=visual-studio-code)](https://code.visualstudio.com/)**
   - Visual Studio Code é um ambiente de desenvolvimento integrado (IDE) leve, gratuito e de código aberto desenvolvido pela Microsoft.
   - Oferece suporte para várias linguagens de programação, incluindo Python, JavaScript, HTML, CSS, entre outras.
   - Possui recursos avançados, como realce de sintaxe, IntelliSense, depuração integrada, controle de versão e extensibilidade.

3. **Jupyter Notebook [![Jupyter Notebook](https://img.shields.io/badge/Jupyter_Notebook-Interactive_Computing-orange?style=flat-square&logo=jupyter)](https://jupyter.org/)**
   - Jupyter Notebook é uma aplicação web de código aberto que permite criar e compartilhar documentos interativos que contêm código, visualizações e texto explicativo.
   - É amplamente utilizado em ciência de dados e pesquisa acadêmica para prototipagem rápida, exploração de dados, experimentação e apresentação.
   - Suporta várias linguagens de programação, incluindo Python, R, Julia e Scala, entre outras.

4. **Pandas [![Pandas](https://img.shields.io/badge/Pandas-Data_Manipulation-blue?style=flat-square&logo=pandas)](https://pandas.pydata.org/)**
   - Pandas é uma biblioteca Python de código aberto que fornece estruturas de dados de alto desempenho e ferramentas de análise de dados.
   - É amplamente utilizado para limpeza, transformação e manipulação de conjuntos de dados tabulares.
   - Oferece funcionalidades poderosas para indexação, seleção, agregação e visualização de dados.

5. **NumPy [![NumPy](https://img.shields.io/badge/NumPy-Scientific_Computing-yellowgreen?style=flat-square&logo=numpy)](https://numpy.org/)**
   - NumPy é uma biblioteca Python fundamental para computação científica que fornece suporte para arrays multidimensionais e funções matemáticas de alto nível.
   - É amplamente utilizado para operações numéricas eficientes em arrays, álgebra linear, transformações de Fourier e muito mais.
   - Possui uma interface poderosa e eficiente para integração com código em C/C++ e Fortran.

6. **Matplotlib [![Matplotlib](https://img.shields.io/badge/Matplotlib-Data_Visualization-blue?style=flat-square&logo=matplotlib)](https://matplotlib.org/)**
   - Matplotlib é uma biblioteca Python de visualização de dados 2D que produz gráficos de alta qualidade em vários formatos.
   - É amplamente utilizado para criar gráficos estáticos, gráficos interativos e animações.
   - Oferece uma API semelhante ao MATLAB para fácil adição de elementos gráficos, como linhas, pontos, barras e textos.

7. **Seaborn [![Seaborn](https://img.shields.io/badge/Seaborn-Statistical_Data_Visualization-yellow?style=flat-square&logo=seaborn)](https://seaborn.pydata.org/)**
   - Seaborn é uma biblioteca Python de visualização de dados baseada em Matplotlib que fornece uma interface de alto nível para criação de gráficos estatísticos informativos e atraentes.
   - É especialmente útil para visualizar relacionamentos estatísticos em conjuntos de dados complexos.
   - Oferece suporte para plotagem de gráficos de dispersão, histogramas, diagramas de caixa, mapas de calor e muito mais.

8. **Unidecode**
   - Unidecode é uma biblioteca Python que fornece funções para converter texto Unicode em ASCII.
   - É útil para normalizar texto e remover caracteres especiais de diferentes idiomas.

9. **NLTK [![NLTK](https://img.shields.io/badge/NLTK-Natural_Language_Toolkit-green?style=flat-square&logo=nltk)](https://www.nltk.org/)**
   - NLTK (Natural Language Toolkit) é uma biblioteca Python de código aberto para processamento de linguagem natural (NLP).
   - Oferece uma série de ferramentas e recursos para tokenização, análise sintática, stemming, lematização, entre outros.
   - É amplamente utilizado em tarefas como classificação de texto, extração de informações, geração de texto e tradução automática.

10. **Scikit-learn [![Scikit-learn](https://img.shields.io/badge/Scikit_learn-Machine_Learning-yellowgreen?style=flat-square&logo=scikit-learn)](https://scikit-learn.org/)**
    - Scikit-learn é uma biblioteca de aprendizado de máquina em Python que oferece uma ampla variedade de algoritmos de classificação, regressão, clustering e pré-processamento de dados.
    - É projetado para ser simples e eficiente, com uma API consistente e fácil de usar.
    - Inclui ferramentas para avaliação de modelos, seleção de recursos, validação cruzada e muito mais.

11. **String**
    - String é um módulo Python que fornece uma coleção de funções e constantes úteis para manipulação de strings.
    - Oferece funcionalidades para formatação de strings, busca, substituição, divisão e outras operações comuns.

12. **Stopwords (NLTK)**
    - Stopwords é uma lista de palavras comuns que são removidas durante o pré-processamento de texto em tarefas de processamento de linguagem natural.
    - NLTK fornece uma coleção de stopwords para diferentes idiomas, permitindo a remoção de palavras irrelevantes que não contribuem para o significado do texto.

13. **CountVectorizer (Scikit-learn)**
    - CountVectorizer é uma classe em Scikit-learn que converte uma coleção de documentos de texto em uma matriz de contagens de tokens.
    - É útil para transformar texto em formato numérico para entrada em modelos de aprendizado de máquina que exigem recursos numéricos.

14. **SVC (Scikit-learn)**
    - SVC (Support Vector Classifier) é um classificador de vetores de suporte em Scikit-learn que implementa máquinas de vetores de suporte para classificação.
    - É eficaz em espaços de alta dimensionalidade e é amplamente utilizado em tarefas de classificação binária e multiclasse.

15. **RandomForestClassifier (Scikit-learn)**
    - RandomForestClassifier é um classificador de floresta aleatória em Scikit-learn que consiste em um conjunto de árvores de decisão.
    - É eficaz para uma variedade de problemas de classificação e é conhecido por sua capacidade de lidar com sobreajuste.

16. **GradientBoostingClassifier (Scikit-learn)**
    - GradientBoostingClassifier é um classificador de impulso de gradiente em Scikit-learn que constrói uma série de modelos de aprendizado de máquina fracos e os combina para obter melhor desempenho preditivo.
    - É conhecido por sua capacidade de lidar com conjuntos de dados de alta dimensionalidade e é frequentemente usado em competições de ciência de dados.

17. **MultinomialNB (Scikit-learn)**
    - MultinomialNB é um classificador de Naive Bayes multinomial em Scikit-learn que é adequado para dados discretos, como contagens de palavras para documentos de texto.
    - É eficaz em tarefas de classificação de texto e é rápido de treinar e avaliar.

18. **Confusion Matrix (Scikit-learn)**
    - Confusion Matrix é uma tabela que mostra o desempenho de um modelo de classificação em um conjunto de dados de teste, comparando as previsões do modelo com os rótulos verdadeiros.
    - É útil para avaliar a precisão, a sensibilidade, a especificidade e outras métricas de desempenho do modelo.
    - Ajuda a identificar padrões de erro e áreas de melhoria no modelo.

19. **Classification Report (Scikit-learn)**
    - Classification Report é uma tabela que mostra várias métricas de avaliação de desempenho para um modelo de classificação, incluindo precisão, recall, F1-score e suporte para cada classe.
    - Oferece uma visão abrangente do desempenho do modelo em cada classe, além de uma média geral ponderada por classe.
    - É útil para entender como o modelo se comporta em diferentes classes e para comparar modelos diferentes.

20. **Threading**
    - Threading é um módulo em Python que fornece suporte para programação concorrente com threads.
    - É útil para executar tarefas em paralelo e melhorar o desempenho de aplicativos que exigem operações simultâneas.

### Entregas Realizadas
1. `README.txt` - Arquivo texto com instruções sobre o que foi desenvolvido
2. `NLP_Modelos_Classificação_e_OPEN_AI.ipynb` - Jupyter Notebook com a solução dos problemas propostos