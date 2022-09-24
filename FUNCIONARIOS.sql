CREATE DATABASE DB_SERVICO_RH; 
-- CRIA UM BANCO DE DADOS --
USE DB_SERVICO_RH;
-- INFORMAL QUAL BANCO DE DADOS SERÁ UTILIZADO --
CREATE TABLE TB_FUNCIONARIOS(
-- CRIAR TABELA --
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR (1000),
IDADE INT,
FUNCAO CHAR(255),
-- ULTIMA FUNÇÃO SEM VÍRGULA, DEVIDO AO FINAL DA TABELA --
PRIMARY KEY (ID)
-- DETERMINAR UMA CHAVE UNICA, OU SEJA, CADA NUMERAÇÃO DO ID SERÁ UNICA, NÃO PODENDO SER UTILIZADO NOVAMENTE --
);

INSERT INTO TB_FUNCIONARIOS (NOME, IDADE, FUNCAO) 
VALUES ("ANA PAULA",27,"DESENVOLVEDORA JAVA");
-- INSERINDO AS INFORMAÇÕES NA ORDEM QUE FOI COLOCADA NO INSERT --

SELECT * FROM TB_FUNCIONARIOS;
-- MOSTRAR NO CONSOLE AS INFORMAÇÕES QUE FORAM PREENCHIDAS --

ALTER TABLE TB_FUNCIONARIOS ADD SALARIO FLOAT;

SELECT *FROM TB_FUNCIONARIOS;

INSERT INTO TB_FUNCIONARIOS (NOME, IDADE, FUNCAO, SALARIO)
VALUES ("ANA PAULA", 27, "DESENVOLVEDORA JAVA", 5000.00);

SELECT * FROM TB_FUNCIONARIOS;

INSERT INTO TB_FUNCIONARIOS (NOME, IDADE, FUNCAO, SALARIO)
VALUES ("NATALIA", 29, "ANALISTA RH", 4600.00);
INSERT INTO TB_FUNCIONARIOS (NOME, IDADE, FUNCAO, SALARIO)
VALUES ("MURILO", 29 , "MECANICO" , 3500.00);
INSERT INTO TB_FUNCIONARIOS (NOME, IDADE, FUNCAO, SALARIO)
VALUES ("EDUARDO", 19 , "RECEPCIONISTA", 1800.00);

SELECT * FROM TB_FUNCIONARIOS;

SELECT * FROM TB_FUNCIONARIOS WHERE SALARIO > 2000.00;

SELECT * FROM TB_FUNCIONARIOS WHERE SALARIO < 2000.00;

DELETE FROM TB_FUNCIONARIOS WHERE ID=1;
DELETE FROM TB_FUNCIONARIOS WHERE ID=2;
SELECT *FROM TB_FUNCIONARIOS;
SET SQL_SAFE_UPDATES = 0;

