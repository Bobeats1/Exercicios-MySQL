
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Criando Tabela CLasses

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT PRIMARY KEY,
	tiposabor VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL
);

-- Inserindo dados na Tabela Categorias

INSERT INTO tb_categorias (tiposabor, tamanho)
VALUES ("Pizza Salgada", "Grande"), ("Pizza Doce", "Grande"), ("Broto Salgado", "Pequena"), 
("Broto Doce", "Pequena"),("Especial Salgada", "Extra Grande"),("Especial Doce", "Extra Grande");

SELECT * FROM tb_categorias;

-- Tabela Pizzas

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	preco DECIMAL (6,2) NOT NULL ,
    ingredientes VARCHAR(255) NOT NULL,
	preparo  TIME,
    categoriaid BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

-- Inserindo dados na tabela personagens

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Calabresa",45.00, "Calabresa, Cebola", '00:35', 1);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Mussarela",45.00, "Queijo Mussarela, Orégano", '00:35', 1);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Brigadeiro",55.00, "Chocolate brigadeiro, Chocolate Granulado", '00:35', 2);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Ninho e Nutella",55.00, "Creme de Avelã, Leite em pó", '00:35', 2);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Broto Brigadeiro",30.00, "Chocolate brigadeiro, Chocolate Granulado", '00:25', 4);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Broto Ninho e Nutella",30.00, "Creme de Avelã, Leite em pó", '00:25', 4);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Broto Mussarela",25.00, "Queijo Mussarela, Orégano", '00:25', 3);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Broto Calabresa",25.00, "Calabresa, Cebola", '00:25', 3);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Calamussa",70.00, "Calabresa, Mussarela e Orégano", '00:50', 5);

INSERT INTO tb_pizzas(nome, preco, ingredientes, preparo, categoriaid) 
values ("Doce Doce Doce",75.00, "Creme de Avelã, Leite em pó e brigadeiro com granulado", '00:50', 6);

-- Consulta Geral Pizzas
SELECT * FROM tb_pizzas;

-- Consultas por preço, e que tenham a letra M no atributo nome

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- Consulta JOIN

SELECT nome, preco, ingredientes, preparo, tb_categorias.tiposabor, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

-- Consulta Join buscando apenas pizzas do sabor salgado

SELECT nome, preco, ingredientes, preparo, tb_categorias.tiposabor, tb_categorias.tamanho
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.id IN  (1, 3, 5)