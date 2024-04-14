# Disciplina: Statistics With R

- [Disciplina: Statistics With R](#disciplina-statistics-with-r)
  - [Professor: Leandro Ferreira ](#professor-leandro-ferreira-)
  - [Conteúdo da Disciplina](#conteúdo-da-disciplina)
- [Cases Desenvolvidos](#cases-desenvolvidos)
  - [Case: Lista 1](#case-lista-1)
    - [Descrição do Case:](#descrição-do-case)
    - [Integrantes da Equipe](#integrantes-da-equipe)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas)
    - [Entregas Realizadas](#entregas-realizadas)
  - [Case: Lista 2](#case-lista-2)
    - [Descrição do Case:](#descrição-do-case-1)
    - [Integrantes da Equipe](#integrantes-da-equipe-1)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas-1)
    - [Entregas Realizadas](#entregas-realizadas-1)
  - [Case: Projeto Integrado - Quantum Finance](#case-projeto-integrado---quantum-finance)
    - [Descrição do Case:](#descrição-do-case-2)
    - [Integrantes da Equipe](#integrantes-da-equipe-2)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas-2)
    - [Entregas Realizadas](#entregas-realizadas-2)

## Professor: Leandro Ferreira [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/lafphd/)

## Conteúdo da Disciplina
1. Introdução ao R
2. Conceitos Básicos de Estatística
3. Estatística Descritiva
4. Conceito de Estatística
5. O que é um estatístico
6. Bases da estatística: Matemática, Computação
7. Análise estatística e conclusão sobre a população
8. Modelagem estatística, como no caso do algoritmo para análise de inadimplência
9. Organização, descrição e apresentação dos dados
10. Inferência Estatística
11. Amostragem, experimentos e modelagem
12. Distribuições, tabelas, gráficos e medidas de probabilidade
13. Conceitos de R
14. Histórico e características do R
15. Instalação e interfaces do R
16. Gerenciamento de pacotes
17. Medidas de resumo: média, mediana, moda, desvio padrão, variância, assimetria, curtose, intervalo, etc.
18. Análise de dados e apresentação em gráficos, como histogramas
19. Manipulação de dados e acesso a componentes de pacotes sem carregá-los totalmente
20. Utilização de critérios para análise de variáveis, como grau de instrução e faixa etária

# Cases Desenvolvidos 
## Case: Lista 1
### Descrição do Case:
O arquivo claims.csv contém uma amostra aleatória de 996 apólices de seguros de veículos referente ao período 2004-2005. As variáveis do arquivo estão na seguinte ordem : (i) valorv (valor do veículo em 10000 dolares australianos), (ii) expos (exposição do veículo), (iii) nsinistros (número de sinistros no período), (iv) csinistros (custo total dos sinistros em dolares australianos), (v) tipov (tipo do veículo em 11 categorias), (vi) idadev (idade do veículo em 4 categorias), (vii) sexoc (sexo do condutor principal), (viii) areac (área de residência do condutor principal) e (ix) idadec (idade do condutor principal em 6 categorias).

1. Faça inicialmente uma análise descritiva dos dados e procure agrupar em um número menor de categorias algumas variáveis categóricas. Considere como variável resposta (target) cmsinistros = csinistros/nsinistros.
2. Faça um modelo de regressão linear. Faça uma análise de resíduos e veja se o modelo se adequa bem ao problema.
3. Faça um modelo usando árvore de decisão.
4. Compare os dois modelos usando a métrica mais apropriada.

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)
3. Victor Galvão [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/victor-galv%C3%A3o-74b63410a/)

### Ferramentas e Tecnologias Utilizadas
1. **R Studio [![R Studio](https://img.shields.io/badge/R_Studio-IDE-blueviolet?style=flat-square&logo=RStudio)](https://www.rstudio.com/)**
   - R Studio é um ambiente de desenvolvimento integrado (IDE) para R, projetado para facilitar a análise de dados e a programação em R.
   - Oferece uma interface intuitiva e amigável, com recursos como edição de código, visualização de gráficos, depuração e controle de versão integrados.
   - Possui suporte para criação de documentos dinâmicos com o pacote rmarkdown, permitindo a integração perfeita de código, texto e gráficos.
   - É altamente personalizável, permitindo que os usuários adaptem o ambiente às suas preferências e necessidades específicas.

2. **R [![R](https://img.shields.io/badge/R-Programming-green?style=flat-square&logo=R)](https://www.r-project.org/)**
   - R é uma linguagem de programação e ambiente de software livre e de código aberto especialmente projetado para computação estatística e análise de dados.
   - Possui uma ampla variedade de pacotes e bibliotecas para estatísticas, gráficos, aprendizado de máquina e muito mais.
   - É amplamente utilizado em pesquisa acadêmica, indústria e comunidades de ciência de dados devido à sua flexibilidade e poder analítico.
   - Oferece uma ampla gama de ferramentas para manipulação de dados, visualização, modelagem estatística e relatórios.

3. **ggplot2 [![ggplot2](https://img.shields.io/badge/ggplot2-Visualization-blue?style=flat-square&logo=R)](https://ggplot2.tidyverse.org/)**
   - ggplot2 é uma biblioteca de visualização em R baseada no conceito de "gramática dos gráficos".
   - Oferece uma abordagem concisa e poderosa para criar gráficos complexos e personalizados.
   - Possui uma sintaxe intuitiva que permite aos usuários criar uma ampla variedade de gráficos, incluindo dispersão, barras, linhas e muito mais.
   - Integrado ao pacote tidyverse, facilitando a manipulação de dados e a criação de gráficos de forma eficiente.

4. **dplyr [![dplyr](https://img.shields.io/badge/dplyr-Data_Manipulation-green?style=flat-square&logo=R)](https://dplyr.tidyverse.org/)**
   - dplyr é um pacote do tidyverse que fornece ferramentas para a manipulação de dados de forma rápida e intuitiva em R.
   - Oferece funções simples e consistentes para filtrar, selecionar, transformar, agrupar e unir conjuntos de dados.
   - Facilita a escrita de código limpo e legível, permitindo que os usuários se concentrem na lógica da manipulação de dados.
   - É altamente integrado com outras ferramentas do tidyverse, como ggplot2 e tidyr, para criar pipelines de análise de dados eficientes.

5. **rmarkdown [![rmarkdown](https://img.shields.io/badge/rmarkdown-Reporting-yellow?style=flat-square&logo=R)](https://rmarkdown.rstudio.com/)**
   - rmarkdown é um pacote que permite a criação de documentos dinâmicos em R, combinando código, texto e gráficos em um único arquivo.
   - Oferece suporte para a criação de relatórios, apresentações, páginas da web interativas e outros tipos de documentos.
   - Permite a inclusão de código R executável, o que facilita a reprodução e a compartilhamento de análises de dados.
   - Integrado ao ambiente de desenvolvimento RStudio, fornecendo uma experiência de criação de documentos integrada e simplificada.

6. **caret [![caret](https://img.shields.io/badge/caret-Machine_Learning-orange?style=flat-square&logo=R)](https://topepo.github.io/caret/index.html)**
   - caret é um pacote em R que fornece uma interface unificada para treinar e avaliar modelos de aprendizado de máquina.
   - Oferece suporte para uma ampla variedade de algoritmos de aprendizado supervisionado e não supervisionado.
   - Facilita a preparação de dados, seleção de modelos, ajuste de hiperparâmetros e avaliação de desempenho em uma única estrutura coesa.
   - É amplamente utilizado na comunidade de ciência de dados devido à sua facilidade de uso e flexibilidade.

7. **corrplot [![corrplot](https://img.shields.io/badge/corrplot-Correlation_Visualization-purple?style=flat-square&logo=R)](https://github.com/taiyun/corrplot)**
   - corrplot é um pacote em R para visualizar matrizes de correlação de forma clara e concisa.
   - Oferece uma variedade de métodos de visualização, incluindo gráficos de matriz de correlação, diagramas de dispersão de pares e gráficos de rede.
   - Facilita a identificação de padrões e relações entre variáveis em conjuntos de dados multivariados.
   - É altamente personalizável, permitindo que os usuários ajustem facilmente a aparência e o layout dos gráficos de correlação.

8. **Metrics [![Metrics](https://img.shields.io/badge/Metrics-Evaluation-yellowgreen?style=flat-square&logo=R)](https://cran.r-project.org/web/packages/Metrics/index.html)**
   - Metrics é um pacote em R que fornece métricas de avaliação comuns para modelos de aprendizado de máquina e estatísticas descritivas.
   - Oferece uma ampla variedade de métricas para avaliar a precisão, o desempenho e a qualidade de modelos preditivos.
   - Facilita a comparação de diferentes modelos e a seleção daquele que melhor se ajusta aos dados e ao problema em questão.
   - É amplamente utilizado em projetos de ciência de dados e aprendizado de máquina para avaliar e validar modelos.

9. **rpart [![rpart](https://img.shields.io/badge/rpart-Decision_Trees-lightgrey?style=flat-square&logo=R)](https://cran.r-project.org/web/packages/rpart/index.html)**
   - rpart é um pacote em R que implementa o algoritmo de construção de árvores de decisão recursivas (Recursive Partitioning and Regression Trees).
   - Oferece uma abordagem eficiente e escalável para modelagem preditiva em problemas de classificação e regressão.
   - Facilita a interpretação e a visualização das regras de decisão geradas pelo modelo de árvore.
   - É amplamente utilizado devido à sua simplicidade, interpretabilidade e capacidade de lidar com conjuntos de dados complexos.

### Entregas Realizadas
1. `lista01_v2.Rmd` - Arquivo R Markdown com a analise solicitada e com os modelos de regressão linear e árvore de descição.

## Case: Lista 2
### Descrição do Case:
Para esse exercício será utilizado os dados referentes a um estudo de caso-controle realizado no Setor de Anatomia e Patologia do Hospital Heliópolis em São Paulo, no período de 1970 a 1982 (canc3.csv).
Um total de 175 pacientes com processo infecioso pulmonar atendido no hospital no período acima foi classificado segundo as seguintes variáveis: tipo, tipo de tumor (1: maligno, 0: benigno); IDADE, idade em anos; SEXO (0:masculino, 1: feminino); HL, intensidade da célula histócitos-linfócitos (1:ausente, 2: discreta, 3: moderada, 4: intensa) e FF, intensidade da célula fibrose-frouxa (1:ausente, 2: discreta, 3: moderada, 4: intensa).
1. Faça inicialmente uma análise descritiva dos dados.
2. Faça um modelo de regressão logística.
3. Faça um modelo usando árvore de decisão.
4. Compare os dois modelos usando a métrica mais apropriada.

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)
3. Victor Galvão [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/victor-galv%C3%A3o-74b63410a/)

### Ferramentas e Tecnologias Utilizadas
1. **R Studio [![R Studio](https://img.shields.io/badge/R_Studio-IDE-blueviolet?style=flat-square&logo=RStudio)](https://www.rstudio.com/)**
   - R Studio é um ambiente de desenvolvimento integrado (IDE) para R, projetado para facilitar a análise de dados e a programação em R.
   - Oferece uma interface intuitiva e amigável, com recursos como edição de código, visualização de gráficos, depuração e controle de versão integrados.
   - Possui suporte para criação de documentos dinâmicos com o pacote rmarkdown, permitindo a integração perfeita de código, texto e gráficos.
   - É altamente personalizável, permitindo que os usuários adaptem o ambiente às suas preferências e necessidades específicas.

2. **R [![R](https://img.shields.io/badge/R-Programming-green?style=flat-square&logo=R)](https://www.r-project.org/)**
   - R é uma linguagem de programação e ambiente de software livre e de código aberto especialmente projetado para computação estatística e análise de dados.
   - Possui uma ampla variedade de pacotes e bibliotecas para estatísticas, gráficos, aprendizado de máquina e muito mais.
   - É amplamente utilizado em pesquisa acadêmica, indústria e comunidades de ciência de dados devido à sua flexibilidade e poder analítico.
   - Oferece uma ampla gama de ferramentas para manipulação de dados, visualização, modelagem estatística e relatórios.

3. **ggplot2 [![ggplot2](https://img.shields.io/badge/ggplot2-Visualization-blue?style=flat-square&logo=R)](https://ggplot2.tidyverse.org/)**
   - ggplot2 é uma biblioteca de visualização em R baseada no conceito de "gramática dos gráficos".
   - Oferece uma abordagem concisa e poderosa para criar gráficos complexos e personalizados.
   - Possui uma sintaxe intuitiva que permite aos usuários criar uma ampla variedade de gráficos, incluindo dispersão, barras, linhas e muito mais.
   - Integrado ao pacote tidyverse, facilitando a manipulação de dados e a criação de gráficos de forma eficiente.

4. **dplyr [![dplyr](https://img.shields.io/badge/dplyr-Data_Manipulation-green?style=flat-square&logo=R)](https://dplyr.tidyverse.org/)**
   - dplyr é um pacote do tidyverse que fornece ferramentas para a manipulação de dados de forma rápida e intuitiva em R.
   - Oferece funções simples e consistentes para filtrar, selecionar, transformar, agrupar e unir conjuntos de dados.
   - Facilita a escrita de código limpo e legível, permitindo que os usuários se concentrem na lógica da manipulação de dados.
   - É altamente integrado com outras ferramentas do tidyverse, como ggplot2 e tidyr, para criar pipelines de análise de dados eficientes.

5. **rmarkdown [![rmarkdown](https://img.shields.io/badge/rmarkdown-Reporting-yellow?style=flat-square&logo=R)](https://rmarkdown.rstudio.com/)**
   - rmarkdown é um pacote que permite a criação de documentos dinâmicos em R, combinando código, texto e gráficos em um único arquivo.
   - Oferece suporte para a criação de relatórios, apresentações, páginas da web interativas e outros tipos de documentos.
   - Permite a inclusão de código R executável, o que facilita a reprodução e a compartilhamento de análises de dados.
   - Integrado ao ambiente de desenvolvimento RStudio, fornecendo uma experiência de criação de documentos integrada e simplificada.

6. **caret [![caret](https://img.shields.io/badge/caret-Machine_Learning-orange?style=flat-square&logo=R)](https://topepo.github.io/caret/index.html)**
   - caret é um pacote em R que fornece uma interface unificada para treinar e avaliar modelos de aprendizado de máquina.
   - Oferece suporte para uma ampla variedade de algoritmos de aprendizado supervisionado e não supervisionado.
   - Facilita a preparação de dados, seleção de modelos, ajuste de hiperparâmetros e avaliação de desempenho em uma única estrutura coesa.
   - É amplamente utilizado na comunidade de ciência de dados devido à sua facilidade de uso e flexibilidade.

7. **corrplot [![corrplot](https://img.shields.io/badge/corrplot-Correlation_Visualization-purple?style=flat-square&logo=R)](https://github.com/taiyun/corrplot)**
   - corrplot é um pacote em R para visualizar matrizes de correlação de forma clara e concisa.
   - Oferece uma variedade de métodos de visualização, incluindo gráficos de matriz de correlação, diagramas de dispersão de pares e gráficos de rede.
   - Facilita a identificação de padrões e relações entre variáveis em conjuntos de dados multivariados.
   - É altamente personalizável, permitindo que os usuários ajustem facilmente a aparência e o layout dos gráficos de correlação.

8. **Metrics [![Metrics](https://img.shields.io/badge/Metrics-Evaluation-yellowgreen?style=flat-square&logo=R)](https://cran.r-project.org/web/packages/Metrics/index.html)**
   - Metrics é um pacote em R que fornece métricas de avaliação comuns para modelos de aprendizado de máquina e estatísticas descritivas.
   - Oferece uma ampla variedade de métricas para avaliar a precisão, o desempenho e a qualidade de modelos preditivos.
   - Facilita a comparação de diferentes modelos e a seleção daquele que melhor se ajusta aos dados e ao problema em questão.
   - É amplamente utilizado em projetos de ciência de dados e aprendizado de máquina para avaliar e validar modelos.

9. **rpart [![rpart](https://img.shields.io/badge/rpart-Decision_Trees-lightgrey?style=flat-square&logo=R)](https://cran.r-project.org/web/packages/rpart/index.html)**
   - rpart é um pacote em R que implementa o algoritmo de construção de árvores de decisão recursivas (Recursive Partitioning and Regression Trees).
   - Oferece uma abordagem eficiente e escalável para modelagem preditiva em problemas de classificação e regressão.
   - Facilita a interpretação e a visualização das regras de decisão geradas pelo modelo de árvore.
   - É amplamente utilizado devido à sua simplicidade, interpretabilidade e capacidade de lidar com conjuntos de dados complexos.

### Entregas Realizadas
1. `Lista2.R` - Arquivo R com os modelos de classificação solicitados.

## Case: Projeto Integrado - Quantum Finance
### Descrição do Case:
A QuantumFinance está acompanhando um crescimento de inadimplência entre seus clientes e solicita a consultoria para desenvolver uma análise de inadimplência.
Esse algoritmo deve descobrir quais fatores tem correlação com a inadimplência. Elaborar um modelo que identifique os fatores relacionados ao valor da dívida a partir da base de dados disponibilizada (train.csv).
Desafio: Desenvolver o modelo preditivo do valor target disponível na base de dados train.csv. Sugestão: dividir a base train.csv em duas amostras: uma para treino e outra para validação.
A partir do modelo escolhido, prever o valor da dívida na base test.csv.
DataSet:https://github.com/fernandojunior/nubank-data-science-puzzle/blob/master/data-science-puzzle.zip

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)
3. Victor Galvão [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/victor-galv%C3%A3o-74b63410a/)

### Ferramentas e Tecnologias Utilizadas
1. **R Studio [![R Studio](https://img.shields.io/badge/R_Studio-IDE-blueviolet?style=flat-square&logo=RStudio)](https://www.rstudio.com/)**
   - R Studio é um ambiente de desenvolvimento integrado (IDE) para R, projetado para facilitar a análise de dados e a programação em R.
   - Oferece uma interface intuitiva e amigável, com recursos como edição de código, visualização de gráficos, depuração e controle de versão integrados.
   - Possui suporte para criação de documentos dinâmicos com o pacote rmarkdown, permitindo a integração perfeita de código, texto e gráficos.
   - É altamente personalizável, permitindo que os usuários adaptem o ambiente às suas preferências e necessidades específicas.

2. **R [![R](https://img.shields.io/badge/R-Programming-green?style=flat-square&logo=R)](https://www.r-project.org/)**
   - R é uma linguagem de programação e ambiente de software livre e de código aberto especialmente projetado para computação estatística e análise de dados.
   - Possui uma ampla variedade de pacotes e bibliotecas para estatísticas, gráficos, aprendizado de máquina e muito mais.
   - É amplamente utilizado em pesquisa acadêmica, indústria e comunidades de ciência de dados devido à sua flexibilidade e poder analítico.
   - Oferece uma ampla gama de ferramentas para manipulação de dados, visualização, modelagem estatística e relatórios.

3. **ggplot2 [![ggplot2](https://img.shields.io/badge/ggplot2-Visualization-blue?style=flat-square&logo=R)](https://ggplot2.tidyverse.org/)**
   - ggplot2 é uma biblioteca de visualização em R baseada no conceito de "gramática dos gráficos".
   - Oferece uma abordagem concisa e poderosa para criar gráficos complexos e personalizados.
   - Possui uma sintaxe intuitiva que permite aos usuários criar uma ampla variedade de gráficos, incluindo dispersão, barras, linhas e muito mais.
   - Integrado ao pacote tidyverse, facilitando a manipulação de dados e a criação de gráficos de forma eficiente.

4. **dplyr [![dplyr](https://img.shields.io/badge/dplyr-Data_Manipulation-green?style=flat-square&logo=R)](https://dplyr.tidyverse.org/)**
   - dplyr é um pacote do tidyverse que fornece ferramentas para a manipulação de dados de forma rápida e intuitiva em R.
   - Oferece funções simples e consistentes para filtrar, selecionar, transformar, agrupar e unir conjuntos de dados.
   - Facilita a escrita de código limpo e legível, permitindo que os usuários se concentrem na lógica da manipulação de dados.
   - É altamente integrado com outras ferramentas do tidyverse, como ggplot2 e tidyr, para criar pipelines de análise de dados eficientes.

5. **rmarkdown [![rmarkdown](https://img.shields.io/badge/rmarkdown-Reporting-yellow?style=flat-square&logo=R)](https://rmarkdown.rstudio.com/)**
   - rmarkdown é um pacote que permite a criação de documentos dinâmicos em R, combinando código, texto e gráficos em um único arquivo.
   - Oferece suporte para a criação de relatórios, apresentações, páginas da web interativas e outros tipos de documentos.
   - Permite a inclusão de código R executável, o que facilita a reprodução e a compartilhamento de análises de dados.
   - Integrado ao ambiente de desenvolvimento RStudio, fornecendo uma experiência de criação de documentos integrada e simplificada.

6. **caret [![caret](https://img.shields.io/badge/caret-Machine_Learning-orange?style=flat-square&logo=R)](https://topepo.github.io/caret/index.html)**
   - caret é um pacote em R que fornece uma interface unificada para treinar e avaliar modelos de aprendizado de máquina.
   - Oferece suporte para uma ampla variedade de algoritmos de aprendizado supervisionado e não supervisionado.
   - Facilita a preparação de dados, seleção de modelos, ajuste de hiperparâmetros e avaliação de desempenho em uma única estrutura coesa.
   - É amplamente utilizado na comunidade de ciência de dados devido à sua facilidade de uso e flexibilidade.

7. **corrplot [![corrplot](https://img.shields.io/badge/corrplot-Correlation_Visualization-purple?style=flat-square&logo=R)](https://github.com/taiyun/corrplot)**
   - corrplot é um pacote em R para visualizar matrizes de correlação de forma clara e concisa.
   - Oferece uma variedade de métodos de visualização, incluindo gráficos de matriz de correlação, diagramas de dispersão de pares e gráficos de rede.
   - Facilita a identificação de padrões e relações entre variáveis em conjuntos de dados multivariados.
   - É altamente personalizável, permitindo que os usuários ajustem facilmente a aparência e o layout dos gráficos de correlação.

8. **Metrics [![Metrics](https://img.shields.io/badge/Metrics-Evaluation-yellowgreen?style=flat-square&logo=R)](https://cran.r-project.org/web/packages/Metrics/index.html)**
   - Metrics é um pacote em R que fornece métricas de avaliação comuns para modelos de aprendizado de máquina e estatísticas descritivas.
   - Oferece uma ampla variedade de métricas para avaliar a precisão, o desempenho e a qualidade de modelos preditivos.
   - Facilita a comparação de diferentes modelos e a seleção daquele que melhor se ajusta aos dados e ao problema em questão.
   - É amplamente utilizado em projetos de ciência de dados e aprendizado de máquina para avaliar e validar modelos.

9. **rpart [![rpart](https://img.shields.io/badge/rpart-Decision_Trees-lightgrey?style=flat-square&logo=R)](https://cran.r-project.org/web/packages/rpart/index.html)**
   - rpart é um pacote em R que implementa o algoritmo de construção de árvores de decisão recursivas (Recursive Partitioning and Regression Trees).
   - Oferece uma abordagem eficiente e escalável para modelagem preditiva em problemas de classificação e regressão.
   - Facilita a interpretação e a visualização das regras de decisão geradas pelo modelo de árvore.
   - É amplamente utilizado devido à sua simplicidade, interpretabilidade e capacidade de lidar com conjuntos de dados complexos.

### Entregas Realizadas
1. `projeto_integrado.Rmd` - Arquivo R com os modelos solicitados.