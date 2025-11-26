
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Criando Tabela Categorias

CREATE TABLE tb_categorias (
	id bigint AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(255) NOT NULL,
    permissaoenvio VARCHAR(255) NOT NULL
);

-- Inserindo dados na Tabela Categorias

INSERT INTO tb_categorias (tipo, permissaoenvio)
VALUES ("Cosméticos", "Sim"), ("Remédios Comuns", "Sim"), ("Higiene Pessoal", "Sim"), 
("Remédios Controlados", "Não"),("Manipulados", "Não"),("Consumíveis", "Sim");

SELECT * FROM tb_categorias;

-- Tabela Produtos

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	preco DECIMAL (6,2) NOT NULL ,
    estoque INT NOT NULL,
	validade  DATE ,
    categoriaid BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

-- Inserindo dados na tabela produtos

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Batom Fosco",45.00, 450, "2026-10-15", 1);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Batom Brilhante",40.00, 430, "2026-12-10", 1);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Dipirona Sódica",12.00, 750, "2028-10-15", 2);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Paracetamol",14.00, 520, "2027-09-25", 2);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Papel Higiênico",17.00, 450, "2028-10-15", 3);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Lenços Umedecidos",19.00, 932, "2026-10-15", 3);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Fenobarbitol",19.00, 450, "2026-07-02", 4);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Sertralina",120.00, 230, "2026-07-12", 4);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Colírio personalizado",120.00, 500, "2026-12-07", 5);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Suplemento vitamínico personalizado",150.00, 230, "2028-12-07", 5);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Goma de Mascar",2.00, 800, "2026-02-02", 6);

INSERT INTO tb_produtos(nome, preco, estoque, validade, categoriaid) 
values ("Refrigerante Lata",5.00, 700, "2026-10-05", 6);

-- Consulta Geral Pizzas
SELECT * FROM tb_produtos;	

-- Consultas por preço, e que tenham a letra C no atributo nome

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- Consulta JOIN

SELECT nome, preco, estoque, validade, tb_categorias.tipo, tb_categorias.permissaoenvio
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

-- Consulta Join buscando apenas produtos da classe Cosméticos

SELECT nome, preco, estoque, validade, tb_categorias.tipo, tb_categorias.permissaoenvio
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.id = 1