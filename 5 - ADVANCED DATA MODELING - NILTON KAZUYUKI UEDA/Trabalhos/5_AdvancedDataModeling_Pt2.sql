--Tabela fato principal do DW
CREATE TABLE "fato_transacao" (
  "id_data" integer,
  "id_operacao" integer,
  "id_produto" integer,
  "id_segmento_cliente" integer,
  "id_tipo_contrato" integer,
  "id_conta" integer,
  "id_endereco" integer,
  "sum_valor" numeric(15,2),
  "qtd_vendas" numeric(15,2)
);

--Dimensao calendario (para filtragem por datas)
CREATE TABLE "dim_calendario" (
  "id_data" integer PRIMARY KEY,
  "ano" integer,
  "mes" integer,
  "dia" integer,
  "flg_dia_util" varchar,
  "flg_feriado" varchar
);

--Dimensao operação (para filtragem por tipo de operação)
CREATE TABLE "dim_operacao" (
  "id_operacao" integer PRIMARY KEY,
  "tipo_operacao" varchar
);

--Dimensao produto (para filtragem por produto)
CREATE TABLE "dim_produto" (
  "id_produto" integer PRIMARY KEY,
  "nome_produto" varchar,
  "inicio_vigencia" datetime,
  "fim_vigencia" datetime
);

--Dimensao categoria de conta (para filtragem por segmento de cliente e categoria de conta)
CREATE TABLE "dim_categoria_conta" (
  "id_segmento_cliente" integer PRIMARY KEY,
  "nome_categoria_conta" varchar
);

--Dimensao tipo de contrato (para filtragem por dados relacionados ao contrato)
CREATE TABLE "dim_tipo_contrato" (
  "id_tipo_contrato" integer PRIMARY KEY,
  "nome_tipo_contrato" varchar,
  "valor_contratado" numeric(15,2),
  "parcelas_em_aberto" integer,
  "valor_em_aberto" numeric(15,2)
);

--Dimensao conta (para filtragem por dados relacionados a conta ou cliente)
CREATE TABLE "dim_conta" (
  "id_conta" integer PRIMARY KEY,
  "nome_agencia" varchar,
  "numero_conta" integer,
  "nome_cliente" varchar,
  "rg" varchar,
  "cpf" varchar,
  "data_nascimento" datetime,
  "telefone" integer,
  "ddd" integer
);

--Dimensao endereço (para filtragem bairro, cidade ou estado)
CREATE TABLE "dim_endereco" (
  "id_endereco" integer PRIMARY KEY,
  "nome_estado" varchar,
  "nome_cidade" varchar,
  "nome_bairro" varchar
);

--Adicionando comentario na coluna "flg_dia_util" da tabela "dim_calendario"
COMMENT ON COLUMN "flg_dia_util"."dim_calendario" IS 'S para dia util e N final de semana';

--Adicionando comentario na coluna "flg_feriado" da tabela "dim_calendario"
COMMENT ON COLUMN "flg_feriado"."dim_calendario" IS 'S para feriado e N para dias normais';

--Criando relação entre as tabelas "fato_transacao" e "dim_calendario"
ALTER TABLE "fato_transacao" ADD FOREIGN KEY ("id_data") REFERENCES "dim_calendario" ("id_data");

--Criando relação entre as tabelas "fato_transacao" e "dim_operacao"
ALTER TABLE "fato_transacao" ADD FOREIGN KEY ("id_operacao") REFERENCES "dim_operacao" ("id_operacao");

--Criando relação entre as tabelas "fato_transacao" e "dim_produto"
ALTER TABLE "fato_transacao" ADD FOREIGN KEY ("id_produto") REFERENCES "dim_produto" ("id_produto");

--Criando relação entre as tabelas "fato_transacao" e "dim_categoria_conta"
ALTER TABLE "fato_transacao" ADD FOREIGN KEY ("id_segmento_cliente") REFERENCES "dim_categoria_conta" ("id_segmento_cliente");

--Criando relação entre as tabelas "fato_transacao" e "dim_tipo_contrato"
ALTER TABLE "fato_transacao" ADD FOREIGN KEY ("id_tipo_contrato") REFERENCES "dim_tipo_contrato" ("id_tipo_contrato");

--Criando relação entre as tabelas "fato_transacao" e "dim_conta"
ALTER TABLE "fato_transacao" ADD FOREIGN KEY ("id_conta") REFERENCES "dim_conta" ("id_conta");

--Criando relação entre as tabelas "fato_transacao" e "dim_endereco"
ALTER TABLE "fato_transacao" ADD FOREIGN KEY ("id_endereco") REFERENCES "dim_endereco" ("id_endereco");