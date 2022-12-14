CREATE DATABASE DB_LOJAGENERATION;
USE DB_LOJAGENERATION;

CREATE TABLE TB_CATEGORIA(
ID BIGINT(5) AUTO_INCREMENT,
DESCRICAO VARCHAR (255) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE TB_PRODUTOS(
ID BIGINT(5) AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
PRECO DECIMAL (6,2) NOT NULL, 
QTPRODUTO INT NOT NULL,
CATEGORIA_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY (CATEGORIA_ID) REFERENCES TB_CATEGORIA(ID)
);

INSERT INTO TB_CATEGORIA (DESCRICAO) VALUES ("PERIFERICOS");
INSERT INTO TB_CATEGORIA (DESCRICAO) VALUES ("SOFTWARE");
INSERT INTO TB_CATEGORIA (DESCRICAO) VALUES ("ADESIVOS");

SELECT * FROM TB_CATEGORIA;

INSERT INTO TB_PRODUTOS (NOME, PRECO, QTPRODUTO, CATEGORIA_ID) VALUES ("MOUSE", 20.00, 4, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, QTPRODUTO, CATEGORIA_ID) VALUES ("TECLADO", 35.00, 12, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, QTPRODUTO, CATEGORIA_ID) VALUES ("STRANGER THINGS", 15.00, 5, 3);

SELECT * FROM TB_PRODUTOS;

DELETE FROM TB_PRODUTOS WHERE ID=3 OR ID=4;

SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIA ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIA.ID;