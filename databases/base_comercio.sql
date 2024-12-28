DROP DATABASE IF EXISTS base_comercio;

CREATE DATABASE IF NOT EXISTS base_comercio;

USE base_comercio;

CREATE TABLE IF NOT EXISTS cliente (
	cod_cli smallint(6) NOT NULL,
	nome_cli varchar(40) NOT NULL,
	endereco varchar(40) DEFAULT NULL,
	cidade varchar(20) DEFAULT NULL,
	cep char(8) DEFAULT NULL,
	uf char(2) DEFAULT NULL,
	PRIMARY KEY(cod_cli)
);

CREATE TABLE IF NOT EXISTS item_pedido (
	no_ped smallint(6) NOT NULL,
	cd_prod smallint(6) NOT NULL,
	qtd_ped float NOT NULL
);

CREATE TABLE IF NOT EXISTS pedido (
	num_ped smallint(6) NOT NULL,
	prazo_entr smallint(6) NOT NULL,
	cd_cli smallint(6) NOT NULL,
	cd_vend smallint(6) NOT NULL,
	PRIMARY KEY(num_ped)
);

CREATE TABLE IF NOT EXISTS produto (
	cod_prod smallint(6) NOT NULL,
	unid_prod char(3) NOT NULL,
	desc_prod varchar(20) NOT NULL,
	val_unit double(9,2) NOT NULL,
	PRIMARY KEY(cod_prod)
);

CREATE TABLE IF NOT EXISTS vendedor (
	cod_vend smallint(6) NOT NULL,
	nome_vend varchar(40) NOT NULL,
	sal_fixo double(9,2) NOT NULL,
	faixa_comiss char(1) NOT NULL,
	PRIMARY KEY(cod_vend)
);

INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (1000, 'Supermercado Carrefour', 'Av. das Americas', 'rio de janeiro', '20000001', 'rj');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (2000, 'Supermercado Baratao', 'Rua 7 de setembro', 'rio de janeiro', '20000002', 'rj');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (3000, 'Supermercado Arariboia', 'Rua Itaoca', 'niteroi', '20000003', 'rj');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (4000, 'Mercado São João', 'Cidade Univers.', 'niteroi', '20000004', 'rj');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (5000, 'CSN', 'Rua das Nações', 'volta redonda', '20000005', 'rj');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (6000, 'Pegeout', 'Rodovia Pres. Dutra', 'resende', '20000006', 'rj');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (7000, 'Lojas Pague Pouco', 'Rua Tuiuti', 'sao paulo', '11000001', 'sp');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (8000, 'Ford Caminhoes', 'Rua Henry Ford', 'sao paulo', '11000002', 'sp');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (9000, 'Célula Celulose', 'Rua Gen. Arouca', 'guaiba', '30000001', 'rs');
INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES (10000, 'Elevadores RioSul', 'Rua Planejada', 'guaiba', '30000001', 'rs');

INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (1111, 100, 100);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (1111, 200, 100);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (1111, 300, 200);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (1112, 400, 100);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (1112, 500, 1000);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (1113, 100, 300);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (2111, 100, 500);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (2111, 500, 400);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (2112, 200, 100);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (2112, 300, 200);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (2113, 500, 500);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (3111, 400, 300);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (3112, 100, 400);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (3112, 200, 600);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (4111, 300, 700);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (4112, 500, 1000);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (4112, 200, 500);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (5111, 200, 100);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (5111, 300, 500);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (6111, 400, 100);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (6112, 300, 400);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (6112, 400, 200);
INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES (7111, 100, 500);

INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (1111, 10, 1000, 11);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (1112, 5, 1000, 11);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (1113, 30, 1000, 15);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (2111, 15, 3000, 14);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (2112, 18, 3000, 15);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (2113, 3, 3000, 12);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (3111, 13, 4000, 12);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (3112, 7, 4000, 11);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (4111, 7, 6000, 11);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (4112, 7, 6000, 14);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (5111, 10, 8000, 14);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (6111, 30, 9000, 14);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (6112, 60, 9000, 12);
INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES (7111, 20, 10000, 15);

INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES (100, 'kg', 'Chapa de Aco', 2.50);
INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES (200, 'kg', 'Cimento', 4.50);
INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES (300, 'kg', 'parafuso 3.0X10.5 mm', 2.00);
INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES (400, 'm', 'Fio plastico', 2.00);
INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES (500, 'l', 'Solvente PRW', 5.00);;

INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES (11, 'Paulo Alberto', 1500.00, 'b');
INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES (12, 'Ana Cristina', 2100.00, 'a');
INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES (13, 'Cassia Andrade', 900.00, 'c');
INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES (14, 'João Roberto', 2500.00, 'a');
INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES (15, 'Maria Paula', 900.00, 'c');