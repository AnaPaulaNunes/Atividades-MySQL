CREATE DATABASE DB_CIDADE_DAS_CARNES;
USE DB_CIDADE_DAS_CARNES;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
DESCRICAO VARCHAR(255) NOT NULL, 
PRIMARY KEY (ID));

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
PRODUTOS VARCHAR(255),
PRECO DECIMAL (6,2), 
ABASTECIMENTO VARCHAR (255),
CATEGORIAS_ID BIGINT, 
PRIMARY KEY (ID),
FOREIGN KEY (CATEGORIAS_ID) REFERENCES TB_CATEGORIAS (ID));

INSERT INTO TB_CATEGORIAS (DESCRICAO) VALUES ("CARNE VERMELHA");
INSERT INTO TB_CATEGORIAS (DESCRICAO) VALUES ("FRANGO");
INSERT INTO TB_CATEGORIAS (DESCRICAO) VALUES ("TEMPERADO");
INSERT INTO TB_CATEGORIAS (DESCRICAO) VALUES ("PEÇA");
INSERT INTO TB_CATEGORIAS (DESCRICAO) VALUES ("PORCO");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("PICANHA", 49.00, "27SET", 1);
INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("COXA E SOBRECOXA", 26.00, "27SET", 2);
INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("COXÃO MOLE", 36.00, "26SET", 1);
INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("MAMINHA", 55.00, "27SET", 1);
INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("BISTECA", 33.00, "27SET", 5);
INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("BIFE A ROLÊ", 60.00, "27SET", 3);
INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("PEITO DE FRANGO", 22.00, "27SET", 2);
INSERT INTO TB_PRODUTOS (PRODUTOS, PRECO, ABASTECIMENTO, CATEGORIAS_ID) VALUES ("BIFE", 55.00, "27SET", 1);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 50.00;
SELECT * FROM TB_PRODUTOS WHERE PRECO BETWEEN 50.00 AND 150.00;
SELECT * FROM TB_PRODUTOS WHERE PRODUTOS LIKE "%C%";
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIAS_ID = TB_CATEGORIAS.ID;
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIAS_ID = TB_CATEGORIAS.ID WHERE DESCRICAO = "CARNE VERMELHA";    