docker exec -it database bash
mysql -u root -p
--PASSWORD: secret

create database projeto_integrado;
use projeto_integrado;
create table cliente (cliente_id varchar(200), nome_cliente varchar(200), endereco varchar(200), cidade varchar(200), contato varchar(200), segmento_negocio varchar(200), foto_identificacao_id varchar(200), assinatura_eletronica_id varchar(200), data_assinatura date);
exit;
exit;
