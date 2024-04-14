# Disciplina
Data Architecture, Integration and Ingestion

## Professor
[Ivan Ferrreira Gancev](https://www.linkedin.com/in/ivan-gancev-8571b017/)

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
Trabalho em grupo (3 ou 4 integrantes)
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

### Entregáveis
1. Cassandra
   1. DDL_Cassandra.sql - Criação do keyspace "avaliacao_grupo" com uma estratégia de replicação simples e definição das tabelas "Produto", "Cliente" e "Pedido"
   2. DML_Cassandra.sql - Inserção de dados nas tabelas "Produto", "Cliente" e "Pedido" dentro do keyspace "avaliacao_grupo".
2. MongoDB
   1. DDL_Mongo.sql - Criação de três coleções no banco de dados "avaliacao_grupo" do MongoDB: "Produto", "Cliente" e "Pedido".
   2. DML_Mongo.sql - Inserção dos dados nas coleções.
   3. Importando Collections.txt - Importação dos dados em formato JSON para as coleções criadas.
   4. produtos.json - Dados dos produtos
   5. clientes.json - Dados dos clientes
3. MySQL
   1. DDL_MySQL.sql - Criação do banco de dados "avaliacao_grupo" e definição das tabelas "Produto", "Cliente" e "Pedido"
   2. DML_MySQL.sql - Inserção de dados nas tabelas "Produto", "Cliente" e "Pedido" dentro do banco de dados "avaliacao_grupo".
   3. Modelagem.xlsx - Modelagem do banco de dados "avaliacao_grupo".