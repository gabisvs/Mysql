-- Consulta SQL Avançada

use db_quintanda;

-- Procura por ordem crescente na Tabela
SELECT * FROM tb_produtos ORDER BY quantidade ASC; 

-- Procura por ordem decrescente  na Tabela
SELECT * FROM tb_produtos ORDER BY quantidade DESC;

-- Procura entre intervalos na Tabela
SELECT * FROM tb_produtos WHERE preco between 3.00 and 8.25; 

-- Busca por caracter: texto% O conteúdo procurado deve começar com o texto digitado (texto)
SELECT * FROM tb_produtos WHERE nome_produto LIKE "l%";

-- Busca por caracter: %texto O conteúdo procurado deve terminar com o texto digitado 
SELECT * FROM tb_produtos WHERE nome_produto LIKE "u%"; 

-- Busca por caracter: %texto% O conteúdo procurado deve conter o texto digitado em qualquer posição (inicio, meio ou fim do texto).
SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";

-- Faz um resumo da tabela, caracteristicas
SHOW CREATE TABLE tb_produtos; 

-- Associação entre Tabelas

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
descricao VARCHAR(255) NOT NULL, 
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (descricao) values 
("Frutas"), ("Verduras"), ("Legumes");

 SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao) values 
("Temperos"), ("Ovos"), ("Outros");

--  Modificando a Estrutura da tabela - Criando o Relacionamento

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome_produto, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome_produto, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

-- Associação entre Tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nomeproduto, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nomeproduto, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nomeproduto, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;