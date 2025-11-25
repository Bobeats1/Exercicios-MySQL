CREATE DATABASE db_rh; 

USE db_rh;

CREATE TABLE tb_rh(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    aniversario DATE,
	salario DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_rh(nome, idade, aniversario, salario) 
VALUES ("João",23, "2002-12-09", 1700.00);

INSERT INTO tb_rh(nome, idade, aniversario, salario) 
VALUES ("Emerson",25, "2000-06-17", 2300.00);

INSERT INTO tb_rh(nome, idade, aniversario, salario) 
VALUES ("Andreza",27, "2000-03-10", 2300.00);

INSERT INTO tb_rh(nome, idade, aniversario, salario) 
VALUES ("Amanda",19, "2006-04-09", 1300.00);

INSERT INTO tb_rh(nome, idade, aniversario, salario) 
VALUES ("Nico",32, "1993-02-15", 4300.00);


SELECT * FROM tb_rh; -- Seleciona dados da Tabela 
SELECT * FROM tb_rh WHERE salario > 2000;
SELECT * FROM tb_rh WHERE salario < 2000;


-- Atualizar dados da Tabela 
UPDATE tb_rh SET aniversario = "1998-03-10" WHERE Id = 3; -- Atualiza a data do aniversário da funcionária com erro no cadastro
