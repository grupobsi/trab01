INSERT INTO produto_marca (codigo, nome, marca) values (1, 'Sorvete', 'Kibom');
INSERT INTO produto_marca (codigo, nome, marca) values (2, 'Biscoito', 'Piraquê');
INSERT INTO produto_marca (codigo, nome, marca) values (3, 'Café', 'Três Corações');
INSERT INTO produto_marca (codigo, nome, marca) values (4, 'Macarrão', 'Renata');
INSERT INTO produto_marca (codigo, nome, marca) values (5, 'Salsicha','Perdigão');
INSERT INTO produto_marca (codigo, nome, marca) values (6, 'Feijão', 'Combrasil');
INSERT INTO produto_marca (codigo, nome, marca) values (7, 'Banana',NULL);
INSERT INTO produto_marca (codigo, nome, marca) values (8, 'Arroz',	'Sepé');
INSERT INTO produto_marca (codigo, nome, marca) values (9, 'Refrigerante Zero', 'Coca-cola');
INSERT INTO produto_marca (codigo, nome, marca) values (10, 'Escova de dentes suave', 'Oral B');

INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (1, 1, 'l', 2);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (2, 2, 'g', 100);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (3, 3, 'g', 100);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (4, 4, 'kg', 1);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (5, 5, 'g', 500);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (6, 6, 'kg', 1);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (7, 7, 'unid', 6);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (8, 8, 'kg', 5);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (9, 9, 'l', 2);
INSERT INTO produto_unid(codigo, marca_fk, unidade_med, quant) VALUES (10, 10, 'unid', 3);

ALTER SEQUENCE endereco_id_endereco_seq RESTART WITH 1;
INSERT INTO endereco(cep,estado,cidade,bairro,rua) VALUES ('29165-491', 'ES', 'Serra', 'Parque Residencial Laranjeiras', 'Rua Afonso Arinos Melo Franco');
INSERT INTO endereco (cep,estado,cidade,bairro,rua) VALUES ('29165-360', 'ES', 'Serra', 'Parque Residencial Laranjeiras', 'Rua Almirante Tamandaré');
INSERT INTO endereco(cep,estado,cidade,bairro,rua) VALUES ('29165-800', 'ES', 'Serra', 'Valparaíso', 'Avenida Iriri');
INSERT INTO endereco(cep,estado,cidade,bairro,rua) VALUES ('29060-210', 'ES', 'Vitória', 'Jardim da Penha', 'Rua Adriano Fontana');
INSERT INTO endereco(cep,estado,cidade,bairro,rua) VALUES ('29065-220', 'ES', 'Vitória', 'Mata da Praia', 'Rua Alderico Tristão');
INSERT INTO endereco(cep,estado,cidade,bairro,rua) VALUES ('29101-441', 'ES', 'Vila Velha', 'Praia da Costa', 'Avenida Afonso Pena');

INSERT INTO usuario VALUES (1, 'joao_silva@gmail.com', 'João', 'Silva', '1996-05-12', 4, 'goiaba33', false);
INSERT INTO usuario VALUES (2, 'maria@hotmail.com',	'Maria', 'Pereira', '1990-07-02', 3, 'xd12345',	false);
INSERT INTO usuario VALUES (3, 'zeca@yahoo.com', 'Zedequias', 'Oliveira', '1999-09-09', 1, 'zezin99', false);
INSERT INTO usuario VALUES (4, 'cuca@gmail.com', 'Caio','Souza', '2000-12-23', 2, 'arrow123', false);
INSERT INTO usuario VALUES (5, 'elliot_alderson@gmail.com', 'Elliot', 'Alderson', '1981-05-12', 5, 'fsociety12', true);

INSERT INTO produto_estoque VALUES (1, 1, 0, 1);
INSERT INTO produto_estoque VALUES (3, 3, 2, 2);
INSERT INTO produto_estoque VALUES (6, 1, 1, 3);
INSERT INTO produto_estoque VALUES (9, 2, 2, 4);
INSERT INTO produto_estoque VALUES (8, 1, 0, 2);
INSERT INTO produto_estoque VALUES (4, 4, 0, 1);
INSERT INTO produto_estoque VALUES (2, 1, 3, 4);
INSERT INTO produto_estoque VALUES (5, 2, 3, 3);
INSERT INTO produto_estoque VALUES (7, 1, 0, 1);
INSERT INTO produto_estoque VALUES (8, 1, 4, 4);

INSERT INTO supermercado VALUES (0, 'Perim', 4);
INSERT INTO supermercado VALUES (1, 'ExtraBom', 1);
INSERT INTO supermercado VALUES (2, 'Carone', 3);

INSERT INTO produto_compra VALUES (1, 1, 1,	0, 14.99, 1, '2019-05-21');
INSERT INTO produto_compra VALUES (2, 3, 1,	1, 8.49, 2, '2019-07-22');
INSERT INTO produto_compra VALUES (3, 8, 1,	1, 17.99, 3, '2019-09-23');
INSERT INTO produto_compra VALUES (4, 2, 3,	2, 5.99, 4, '2019-02-24');
INSERT INTO produto_compra VALUES (5, 3, 1,	2, 7.99, 3, '2019-09-23');
INSERT INTO produto_compra VALUES (6, 4, 2,	1, 1.99, 2, '2019-09-23');
INSERT INTO produto_compra VALUES (7, 5, 4,	0, 15.99, 1, '2019-03-23');
INSERT INTO produto_compra VALUES (8, 6, 6,	1, 3.99, 2, '2019-09-03');
INSERT INTO produto_compra VALUES (9, 7, 8,	0, 20.99, 3, '2019-01-13');
INSERT INTO produto_compra VALUES (10, 8, 11, 2, 6.99, 4, '2019-02-21');

INSERT INTO mensagens_administrador VALUES (1, '[...]Texto 1[...]', 1);
INSERT INTO mensagens_administrador VALUES (2, '[...]Texto 2[...]', 5);
INSERT INTO mensagens_administrador VALUES (3, '[...]Texto 3[...]', 2);
INSERT INTO mensagens_administrador VALUES (4, '[...]Texto 4[...]', 5);

INSERT INTO supermercado_preferencia_administrador VALUES (1, 10, '2019-03-01',	'2019-03-31');
INSERT INTO supermercado_preferencia_administrador VALUES (0, 12, '2019-04-01',	'2019-04-30');

INSERT INTO produto_consumo_medio_administrador VALUES(1, 7, '2019-03-01', '2019-03-31', 1);
INSERT INTO produto_consumo_medio_administrador VALUES(5, 8, '2019-02-01', '2019-02-28', 2);
INSERT INTO produto_consumo_medio_administrador VALUES(4, 4, '2019-04-01', '2019-04-30', 4);
INSERT INTO produto_consumo_medio_administrador VALUES(9, 6, '2019-05-01', '2019-05-31', 5);

INSERT INTO produto_consumo_medio_cliente VALUES(1, 7, '2019-03-01', '2019-03-31', 1);
INSERT INTO produto_consumo_medio_cliente VALUES(5, 8, '2019-02-01', '2019-02-28', 2);
INSERT INTO produto_consumo_medio_cliente VALUES(4, 4, '2019-04-01', '2019-04-30', 4);
INSERT INTO produto_consumo_medio_cliente VALUES(9, 6, '2019-05-01', '2019-05-31', 5);

