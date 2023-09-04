#CRIANDO O BANCO DE DADOS
CREATE DATABASE avaliacao_grupo;

#SELECIONANDO O BANCO
USE avaliacao_grupo;

#CRIANDO A TABLE Produto
CREATE TABLE Produto(ID_Produto INT, Nome CHAR(50), Modelo CHAR(50), Fabricante CHAR(50), Valor DECIMAL(10,2), PRIMARY KEY (ID_Produto));

#CRIANDO TABLE Cor
CREATE TABLE Cor(ID_Cor INT, Nome CHAR(50), PRIMARY KEY (ID_Cor));

#CRIANDO TABLE Produto_Cor
CREATE TABLE Produto_Cor(ID_Produto INT, ID_Cor INT, PRIMARY KEY (ID_Produto, ID_Cor), FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto), FOREIGN KEY (ID_Cor) REFERENCES Cor(ID_Cor));

#CRIANDO TABLE Tamanho
CREATE TABLE Tamanho(ID_Tamanho INT, Descricao CHAR(50), PRIMARY KEY (ID_Tamanho));

#CRIANDO TABLE Produto_Tamanho
CREATE TABLE Produto_Tamanho(ID_Produto INT, ID_Tamanho INT, PRIMARY KEY (ID_Produto, ID_Tamanho), FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto), FOREIGN KEY (ID_Tamanho) REFERENCES Tamanho(ID_Tamanho));

#CRIANDO TABLE Cliente	
CREATE TABLE Cliente(ID_Cliente INT, CPF CHAR(11), Nome CHAR(50), Endereco CHAR(50), CEP CHAR(9), Email CHAR(50), Telefone CHAR(15), PRIMARY KEY (ID_Cliente));

#CRIANDO TABLE Pedido
CREATE TABLE Pedido(ID_Pedido INT, ID_Cliente INT, PRIMARY KEY(ID_Pedido), FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente));

#CRIANDO TABLE Pedido_Produto	
CREATE TABLE Pedido_Produto(ID_Pedido INT, ID_Produto INT, ID_Cor INT, ID_Tamanho INT, Quantidade INT, Valor_Pago DECIMAL(10, 2), PRIMARY KEY (ID_Pedido, ID_Produto), FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido), FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto), FOREIGN KEY (ID_Cor) REFERENCES Cor(ID_Cor), FOREIGN KEY (ID_Tamanho) REFERENCES Tamanho(ID_Tamanho));
