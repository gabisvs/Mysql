-- Criação do banco de dados
CREATE DATABASE db_pizzaria_bella_pizza; 

USE db_pizzaria_bella_pizza; 

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nomepizza VARCHAR(50) NOT NULL,
descricao VARCHAR(255) NOT NULL,
borda VARCHAR(50) NOT NULL,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

DESCRIBE tb_pizzas;

INSERT INTO tb_pizzas(nomepizza, descricao, borda, preco)
VALUES ("Brócolis", "Pizza de brócolis,ovos, mussarela e alho", "Catupiry", 52.00);

INSERT INTO tb_pizzas (nomepizza, descricao, borda, preco)
VALUES ("Caprimilho", "Pizza de Milho, palmito e mussarela", "Catupiry", 55.00);

INSERT INTO tb_pizzas (nomepizza, descricao, borda, preco)
VALUES ("Cremosa", "Pizza de Mussarela, catupiry, parmesão e provolone", "Cheddar", 62.00);

INSERT INTO tb_pizzas (nomepizza, descricao, borda, preco)
VALUES ("Frango Catupiry", "Pizza de Frango desfiado com catupiry", "Catupiry", 44.90);

INSERT INTO tb_pizzas (nomepizza, descricao, borda, preco)
VALUES ("Gabriela", "Pizza mesclada de Chocolate preto e branco com pedaços de morango", "Doce de Leie", 56.00);

INSERT INTO tb_pizzas (nomepizza, descricao, borda, preco)
VALUES ("Brigadeiro", "Pizza de Chocolate ao leite com granulados", "Chocolate ao leite", 46.90);

INSERT INTO tb_pizzas (nomepizza, descricao, borda, preco)
VALUES ("Romeu e Julieta", "Pizza de Mussarela e goiaba", "Doce de leite", 46.90);

INSERT INTO tb_pizzas (nomepizza, descricao, borda, preco)
VALUES ("Branca de Neve", "Pizza de Chocolate branco, amendoim e pedaços de bombom", "Chocolate Branco", 60.00);

SELECT * FROM tb_pizzas; 

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
	tipocategoria VARCHAR(255) NOT NULL,
    nivelpopularidade DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

-- ALTER TABLE tb_categorias
-- CHANGE COLUMN nivelpopulariade nivelpopularidade DECIMAL NOT NULL;

DESCRIBE tb_categorias;

INSERT INTO tb_categorias (tipocategoria, nivelpopularidade) 
VALUES ("Pizza Salgada", 5.0);

INSERT INTO tb_categorias (tipocategoria, nivelpopularidade) 
VALUES ("Pizza Doce", 4.0);

SELECT * FROM tb_categorias;

-- Criando a Relação entre as Tabelas 
ALTER TABLE tb_pizzas ADD categoriaid BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

-- Atualização o id
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 1; 
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 2; 
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 3; 
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 4; 
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 5; 
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 6; 
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 7; 
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 8; 

SELECT * FROM tb_pizzas; 

-- Ajustar nivelpopularidade para DECIMAL(5, 2)
ALTER TABLE tb_categorias
MODIFY COLUMN nivelpopularidade DECIMAL(5, 2) NOT NULL;

-- Ajustar nivelpopularidade para DECIMAL(5, 2)
ALTER TABLE tb_pizzas
MODIFY COLUMN preco DECIMAL(5, 2) NOT NULL;

-- Verificações 
SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nomepizza LIKE '%M%';

-- INNER JOIN entre tb_pizzas e tb_categorias
SELECT tb_pizzas.*, tb_categorias.tipocategoria, tb_categorias.nivelpopularidade
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id;

-- INNER JOIN para pizzas de uma categoria específica (teste pizza doce)
SELECT tb_pizzas.*, tb_categorias.tipocategoria, tb_categorias.nivelpopularidade
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.tipocategoria = 'Pizza Doce';







