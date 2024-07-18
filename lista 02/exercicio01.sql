-- Criação do banco de dados
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT, 
nomepersonagem VARCHAR(50) NOT NULL,
hp INT NOT NULL,
mana INT NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Aragorn', 150, 50, 2500, 1500);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Gandalf', 100, 200, 3000, 2500);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Legolas', 120, 80, 2200, 1000);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Boromir', 160, 60, 1800, 1300);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Frodo', 80, 40, 800, 1200);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Sam', 90, 30, 850, 1150);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Gimli', 140, 60, 1900, 1600);

INSERT INTO tb_personagens (nomepersonagem, hp, mana, poder_ataque, poder_defesa) 
VALUES ('Saruman', 110, 180, 2800, 2000);

SELECT * FROM tb_personagens;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
    nomeclasse VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

DESCRIBE tb_classes;

INSERT INTO tb_classes (nomeclasse, descricao) 
VALUES ('Guerreiro', 'Classe de combate corpo a corpo');

INSERT INTO tb_classes (nomeclasse, descricao) 
VALUES ('Mago', 'Classe de combate à distância usando magia');

INSERT INTO tb_classes (nomeclasse, descricao) 
VALUES ('Arqueiro', 'Classe de combate à distância usando arco e flecha');

INSERT INTO tb_classes (nomeclasse, descricao) 
VALUES ('Paladino', 'Classe de combate com habilidades de cura e proteção');

INSERT INTO tb_classes (nomeclasse, descricao) 
VALUES ('Assassino', 'Classe de combate furtivo com ataques rápidos e precisos');

SELECT * FROM tb_classes;

-- Criando a Relação entre as Tabelas 
ALTER TABLE tb_personagens ADD classeid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classeid) REFERENCES tb_classes(id);

-- Atualização o id
UPDATE tb_personagens SET classeid = 3 WHERE id = 1; 
UPDATE tb_personagens SET classeid = 2 WHERE id = 2; 
UPDATE tb_personagens SET classeid = 3 WHERE id = 3; 
UPDATE tb_personagens SET classeid = 1 WHERE id = 4; 
UPDATE tb_personagens SET classeid = 4 WHERE id = 5; 
UPDATE tb_personagens SET classeid = 4 WHERE id = 6; 
UPDATE tb_personagens SET classeid = 1 WHERE id = 7; 
UPDATE tb_personagens SET classeid = 2 WHERE id = 8; 

SELECT * FROM tb_personagens;

-- Consultas 
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nomepersonagem LIKE '%C%';

-- INNER JOIN entre tb_personagens e tb_classes
SELECT tb_personagens.*, tb_classes.nomeclasse, tb_classes.descricao 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id;

-- INNER JOIN para personagens de uma classe específica (teste arqueiro)
SELECT tb_personagens.*, tb_classes.nomeclasse, tb_classes.descricao 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.nomeclasse = 'Arqueiro';