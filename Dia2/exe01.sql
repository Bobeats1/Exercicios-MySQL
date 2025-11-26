
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Criando Tabela CLasses

CREATE TABLE tb_classes(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	nomeclasse VARCHAR(255) NOT NULL,
    skillpoints INT NOT NULL
);

-- Inserindo dados na Tabela Classes

INSERT INTO tb_classes (nomeclasse, skillpoints)
VALUES ("Arqueiro", 30), ("Cavaleiro", 22), ("Mago", 30), ("Piromante", 20), ("Soldado", 22), ('Bare Bones', 50);

SELECT * FROM tb_classes;

-- Tabela Personagens 

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	ataque INT NOT NULL ,
    defesa INT NOT NULL ,
	nivel  INT NOT NULL,
    classeid BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (classeid) REFERENCES tb_classes (id)
);

-- Inserindo dados na tabela personagens

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Isshin",2000, 1500, 34, 2);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Freya",1500, 3000, 30, 3);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Artorias",4500, 2000, 49, 2);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Nito",1700, 2300, 35, 4);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Yin",1500, 1500, 1, 6);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Lotrian",2500, 1400, 17, 1);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Cole",2400, 2700, 39, 5);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classeid) 
values ("Aldia",4000, 1200, 42, 3);

-- Consulta Geral Personagens
SELECT * FROM tb_personagens;

-- Consultas Ataque, Defesa e Personagens que comecem com a letra C

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE 'C%';

-- Consulta JOIN

SELECT nome, ataque, defesa, nivel, tb_classes.nomeclasse
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

-- Consulta Join buscando apenas personagens da classe Arqueiro

SELECT nome, ataque, defesa, nivel, tb_classes.nomeclasse
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.id = 1;