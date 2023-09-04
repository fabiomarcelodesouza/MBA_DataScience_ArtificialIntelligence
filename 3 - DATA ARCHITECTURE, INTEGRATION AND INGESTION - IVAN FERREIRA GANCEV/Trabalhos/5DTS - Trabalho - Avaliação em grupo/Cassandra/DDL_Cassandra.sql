--CRIANDO O BANCO DE DADOS
CREATE KEYSPACE avaliacao_grupo
WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};

--SELECIONANDO O BANCO
USE avaliacao_grupo;

--CRIANDO A TABLE Produto
CREATE TABLE Produto(ID_Produto INT, Nome TEXT, Modelo TEXT, Fabricante TEXT, Valor DECIMAL, Cor SET<TEXT>, Tamanho LIST<TEXT>, PRIMARY KEY (ID_Produto));

--CRIANDO TABLE Cliente	
CREATE TABLE Cliente(ID_Cliente INT, CPF TEXT, Nome TEXT, Endereco TEXT, CEP TEXT, Email TEXT, Telefone TEXT, PRIMARY KEY (ID_Cliente));

--CRIANDO TABLE Pedido
CREATE TABLE Pedido(ID_Pedido INT, ID_Cliente INT, CPF TEXT, Nome TEXT, Endereco TEXT, CEP TEXT, Email TEXT, Telefone TEXT, Produtos tuple<INT, TEXT, TEXT, TEXT, DECIMAL, TEXT, TEXT>, PRIMARY KEY(ID_Pedido));
