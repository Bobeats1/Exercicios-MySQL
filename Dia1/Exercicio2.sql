CREATE DATABASE db_livraria; 

USE db_livraria;

CREATE TABLE tb_livraria(
    id BIGINT AUTO_INCREMENT,
	produto VARCHAR(255) NOT NULL,
	estoque INT,
    lancamento DATE,
	preco DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("O Alquimista", 300, "1988-01-01", 7.00);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("Diário de Anne Frank", 410, "1947-06-25", 30.00);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("Memórias Póstumas de Brás Cubas", 120, "1881-01-01", 800.00);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("A Metamorfose", 300, "1915-01-10", 45.00);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("Maus vol. 1", 200, "1986-01-01", 95.00);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("Feliz Ano Velho", 80, "1982-01-01", 40.00);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("As cronicas de Gelo e Fogo: vol 1", 300, "1996-08-01", 900.00);

INSERT INTO tb_livraria(produto, estoque, lancamento, preco) 
VALUES ("Harry Potter e a Pedra Filosofal", 120, "1997-06-26", 300.00);


SELECT * FROM tb_livraria; -- Seleciona dados da Tabela 
SELECT * FROM tb_livraria WHERE preco > 500;
SELECT * FROM tb_livraria WHERE preco < 500;


-- Atualizar dados da Tabela 
UPDATE tb_livraria SET preco = 20.00 WHERE Id = 1; -- Atualiza o preço do produto "O Alquimista"
