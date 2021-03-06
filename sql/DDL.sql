/* CRIANDO AS TABELAS */

CREATE TABLE PRODUTO_MARCA ( 
	codigo INT, 
	nome VARCHAR(50), 
 	marca VARCHAR(50), 
  	PRIMARY KEY (codigo));

CREATE TABLE PRODUTO_UNID ( 
	codigo INT, 
	marca_fk INT, 
	unidade_med CHAR(5), 
	quant INT, 
	PRIMARY KEY (codigo), 
	FOREIGN KEY (marca_fk) REFERENCES PRODUTO_MARCA(codigo));

CREATE TABLE ENDERECO ( 
	id_endereco SERIAL,
	cep VARCHAR(10), 
	estado CHAR(2), 
	cidade VARCHAR(30), 
	bairro VARCHAR(50), 
	rua VARCHAR(50), 
	PRIMARY KEY (id_endereco));

CREATE TABLE USUARIO ( 
	id_usuario INT, 
	email VARCHAR(70), 
	nome VARCHAR(20), 
	sobrenome VARCHAR(40), 
	dat_nascimento DATE, 
	endereco_id_fk INT, 
	senha VARCHAR(20), 
	administrador BOOL, 
	PRIMARY KEY (id_usuario), 
	FOREIGN KEY (endereco_id_fk) REFERENCES ENDERECO(id_endereco));

CREATE TABLE PRODUTO_ESTOQUE ( 
	cod_produto_fk INT, 
	qnt_minima INT, 
	qnt_atual INT, 
	usuario_id_fk INT, 
	FOREIGN KEY (cod_produto_fk) REFERENCES PRODUTO_UNID(codigo), 
	FOREIGN KEY (usuario_id_fk) REFERENCES USUARIO(id_usuario));

CREATE TABLE SUPERMERCADO ( 
	codigo INT, 
	nome VARCHAR(20), 
	endereco_id_fk INT, 
	PRIMARY KEY (codigo), 
	FOREIGN KEY (endereco_id_fk) REFERENCES ENDERECO(id_endereco));

CREATE TABLE PRODUTO_COMPRA ( 
	codigo INT, 
	cod_produto_fk INT, 
	qnt_compra INT, 
	mercado_compra_fk INT, 
	preco MONEY, 
	usuario_id_fk INT, 
	data_compra DATE, 
	PRIMARY KEY (codigo), 
	FOREIGN KEY (cod_produto_fk) REFERENCES PRODUTO_UNID(codigo), 
	FOREIGN KEY (mercado_compra_fk) REFERENCES SUPERMERCADO(codigo), 
	FOREIGN KEY (usuario_id_fk) REFERENCES USUARIO(id_usuario));

CREATE TABLE MENSAGENS_ADMINISTRADOR ( 
	codigo INT, 
	mensagem TEXT, 
	remetente_usuario_fk INT, 
	PRIMARY KEY (codigo), 
	FOREIGN KEY (remetente_usuario_fk) REFERENCES USUARIO(id_usuario));

CREATE TABLE PRODUTO_CONSUMO_MEDIO_CLIENTE ( 
	produto_fk INT, 
	consumo_medio FLOAT, 
	periodo_inicio DATE, 
	periodo_fim DATE, 
	usuario_fk INT, 
	FOREIGN KEY (produto_fk) REFERENCES PRODUTO_UNID(codigo), 
	FOREIGN KEY (usuario_fk) REFERENCES USUARIO(id_usuario));

CREATE TABLE PRODUTO_CONSUMO_MEDIO_ADMINISTRADOR ( 
	produto_fk INT, 
	consumo_medio FLOAT, 
	periodo_inicio DATE, 
	periodo_fim DATE, 
	usuario_fk INT, 
	FOREIGN KEY (produto_fk) REFERENCES PRODUTO_UNID(codigo), 
	FOREIGN KEY (usuario_fk) REFERENCES USUARIO(id_usuario));

CREATE TABLE SUPERMERCADO_PREFERENCIA_ADMINISTRADOR ( 
	supermercado_fk INT, 
	compras_efetuadas INT, 
	periodo_inicio DATE, 
	periodo_fim DATE, 
	FOREIGN KEY (supermercado_fk) REFERENCES SUPERMERCADO(codigo));
