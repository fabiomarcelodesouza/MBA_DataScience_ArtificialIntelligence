# Disciplina: Advanced Data Modeling

- [Disciplina: Advanced Data Modeling](#disciplina-advanced-data-modeling)
  - [Professor: Nilton Kazuyuki Ueda ](#professor-nilton-kazuyuki-ueda-)
  - [Conteúdo da Disciplina](#conteúdo-da-disciplina)
- [Cases Desenvolvidos](#cases-desenvolvidos)
  - [Case: Fintech DinDinAgora](#case-fintech-dindinagora)
    - [Descrição do Case:](#descrição-do-case)
    - [Integrantes da Equipe](#integrantes-da-equipe)
    - [Ferramentas e Tecnologias Utilizadas](#ferramentas-e-tecnologias-utilizadas)
    - [Entregas Realizadas](#entregas-realizadas)

## Professor: Nilton Kazuyuki Ueda [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/niltonkazuyukiueda/)

## Conteúdo da Disciplina
1. Modelagem de dados estruturados 
   1. Modelagem relacional
   2. Modelagem dimensional 
2. Modelagem de dados não estruturados
   1. Modelagem chave e valor
   2. Modelagem de documentos
   3. Modelagem de grafos
   4. Modelagem Colunar

# Cases Desenvolvidos
## Case: Fintech DinDinAgora
### Descrição do Case:
A empresa DinDinAgora é uma nova Fintech, ela está entrando forte no mercado para concorrer com grandes players do mercado.
Nesse case veremos como aplicar inteligência artificial para a expansão da empresa e melhoria de atuação no mercado nacional e internacional, em seus diversos segmentos.
Cenário: A DinDinAgora está no mercado, os investidores veem muito potencial, porém, com o crescimento e o investimento acelerado existe a necessidade de melhor escalabilidade. Com este cenário em mente, iremos evoluir a arquitetura de dados da DinDinAgora para que seja possível escalar todo o ambiente de dados habilitando maior agilidade, estabilidade e confiança na entrega de dados. No fim da matéria teremos um desenho de arquitetura de dados completo, escalável e aderente a diferentes aplicações e necessidades de negócio. A cada aula esta arquitetura será incrementada, conforme necessidades de bases relacionais, bases analíticas e NoSQL.

**Arquitetura de Dados - Parte 1 - Relacional**
A DindinAgora tem sofrido com lentidões em seu sistema transacional principal, onde os clientes podem se cadastrar, adquirir produtos(crédito) e realizar transações financeiras, como depósitos e transferências. Vocês, como arquitetos de dados identificam que a problemática ocorre por falhas na estrutura de dados, que não está normalizada corretamente. 
Objetivo: construir um MER (modelo entidade relacional) na terceira forma normal para cadastrar clientes, com dados cadastrais contendo dados documentais, de endereço, depósitos, aquisições de produtos de crédito e transferências.

**Entrega:**
Arquivo com o desenho do Modelo com todas suas relações descritas.

**Arquitetura de Dados - Parte 2 - DW Dimensional**
Uma vez que a DindinAgora está com seu Sistema transacional modelado de forma normalizada e otimizado, agora precisamos construir um Data Warehouse para gerar relatórios, gráficos para diretoria e análises. Esse Data Warehouse deve conter fatos descrevendo, depósitos, transferências e contratações. E as dimensões devem descrever os produtos, categoria de cliente, tempo (quando) e outras dimensões que vocês entendam ser importantes para o negócio da DinDinAgora.

**Entrega:**
Arquivo com o desenho do modelo com todas suas relações descritas.

**Arquitetura de Dados – Parte 3 - Big Data**
A DindinAgora vem crescendo e o DW construído tem papel fundamental para as decisões tomadas e acertos estratégicos, porém quanto mais a empresa cresce, mais volume de dados precisa ser processado. Aos poucos a performance do DW, vem diminuindo, porém nada alarmante. Porém, uma nova demanda, traz a ideia de iniciar um Data Lake para a DinDinAgora, existem 3 relatórios que vem aumentando seu volume com maior velocidade, e o time de negócios solicitou a inclusão de dados externos nestes relatórios: 
1.	Fato de Pedidos
2.	Dimensão de Clientes

Para a fato de pedidos, temos as seguintes características: 
1.	Hoje já com centenas de milhões de registros
2.	O Time de negócios quer incluir informações como:
   1. Origem da aquisição (push, site, e-mail)
   2. IDs das plataformas de internet (Facebook, Instagram, Site) 
   3. Lat x Long do dispositivo no momento da aquisição 
   
Os principais filtros, são orientados ao momento no tempo em que o pedido foi realizado e a categoria do produto.

Para a dimensão de clientes temos as seguintes características: 
1.	Hoje já com milhões de registros
2.	O Time de negócios quer incluir informações como: 
   1. IDs das plataformas de internet (Facebook, Instagram, Site) 
   2. Perfil de comportamento

Os filtros mais utilizados são: data de cadastro, ultimo login, faixa de renda e localização.

Com base neste cenário, será implementado um ambiente Big Data para processamento dessas visões e relatórios. O desafio do trabalho é implementar um modelo de dados, que seja efetivo, com desempenho e custo controlado para estas visões. Neste momento, o maior objetivo é entregar desempenho.

**Entrega:**
1. Arquivo como desenho do modelo com todas as suas relações descritas;
2. Definição e justificativa do particionamento e clusterização.

### Integrantes da Equipe
1. Fabio Souza [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/fabiomarcelosouza/)
2. Felipe Scudeller [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/felipe-scudeller/)

### Ferramentas e Tecnologias Utilizadas
1. **SQL Server [![SQL Server](https://img.shields.io/badge/SQL_Server-Database-red?style=flat-square&logo=microsoft-sql-server)](https://docs.microsoft.com/en-us/sql/sql-server/?view=sql-server-ver15)**
   - SQL Server é um sistema de gerenciamento de banco de dados relacional (RDBMS) desenvolvido pela Microsoft.
   - Oferece um conjunto abrangente de recursos para armazenamento, manipulação e análise de dados.
   - Amplamente utilizado em ambientes corporativos para gerenciar e analisar grandes volumes de dados de forma confiável e segura.
   - Suporta transações ACID (Atomicidade, Consistência, Isolamento e Durabilidade) para garantir a integridade e a consistência dos dados.

2. **dbdiagram.io [![dbdiagram.io](https://img.shields.io/badge/dbdiagram.io-Database_Design-yellow?style=flat-square&logo=dbdiagram)](https://dbdiagram.io/)**
   - dbdiagram.io é uma ferramenta online para design de bancos de dados.
   - Oferece uma interface intuitiva para criar e visualizar diagramas de banco de dados.
   - Amplamente utilizado por desenvolvedores e equipes de engenharia de software para modelagem de dados, colaboração e documentação de projetos de banco de dados.

### Entregas Realizadas
1. `0_README.txt` - Instruções referentes aos arquivos entregues.
2. `1_AdvancedDataModeling_Pt1.png` - Modelagem parte 1 - Relacional
![Modelagem parte 1 - Relacional](./Case%20DinDinAgora/1_AdvancedDataModeling_Pt1.png)
3. `2_AdvancedDataModeling_Pt2.png` - Modelagem parte 2 - DW Dimensional
![Modelagem parte 2 - DW Dimensional](./Case%20DinDinAgora/2_AdvancedDataModeling_Pt2.png)
4. `3_AdvancedDataModeling_Pt3.png` - Modelagem parte 3 - Data Lake
![Modelagem parte 3 - Data Lake](./Case%20DinDinAgora/3_AdvancedDataModeling_Pt3.png)
1. `4_AdvancedDataModeling_Pt1.sql` - Script para criação do banco de dados relacional (SQL Server)
2. `5_AdvancedDataModeling_Pt2.sql` - Script para criação do Data Warehouse (SQL Server)
3. `6_AdvancedDataModeling_Pt3.sql` - Script para criação do banco do Data Lake (SQL Server)
4. `7_TrabalhoNiltonUeda.pdf` - PDF com a consolidação do trabalho