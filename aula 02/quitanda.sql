-- Create database -- DDL

CREATE DATABASE db_quintanda; 
USE db_quintanda; 
DROP DATABASE db_quintandas; 

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
quantidade INT, 
datavalidade DATE, 
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

DESCRIBE tb_produtos;

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco) 
VALUES ("tomate", 100, "2024-12-16", 8.00); 

INSERT INTO tb_produtos(nomeproduto, quantidade, datavalidade, preco) 
VALUES ("maçã", 20, "2023-12-15", 5.00);

INSERT INTO tb_produtos(nomeproduto, Quantidade, Datavalidade, Preco) 
VALUES ("Laranja", 50, "2023-12-15", 10.00);

INSERT INTO tb_produtos(nomeproduto, Quantidade, Datavalidade, Preco) 
vaLUES ("Banana", 200, "2023-12-15", 12.00);

INSERT INTO tb_produtos(nomeproduto, Quantidade, Datavalidade, Preco) 
VALUES ("Uva", 1200, "2023-12-15", 30.00);

INSERT INTO tb_produtos(nomeproduto, Quantidade, Datavalidade, Preco) 
VALUES ("Pêra", 500, "2023-12-15", 2.99);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nomeproduto, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nomeproduto, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualizar todos os dados na Tabela
SELECT * FROM tb_produtos; 

-- Selecionar algum dado para visualizar na Tabela
SELECT nome, preco FROM tb_produtos; 

-- Para buscar algum dado específico na Tabela 
SELECT * FROM tb_produtos WHERE id = 2; 

-- Para buscar algum dado com Operadores Relacionais na Tabela 
SELECT * FROM tb_produtos WHERE preco > 5.00; 

-- Selecionando dados com os Operadores Lógicos na Tabela
SELECT * FROM tb_produtos WHERE preco > 5 AND quantidade < 100; 

-- ------------------------------------------------------------------------
-- Para adicionar uma nova Tabela
ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- Para apagar uma Tabela 
ALTER TABLE tb_produtos DROP descricao; 

-- Para alterar o nome na Tabela
ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); 

-- ------------------------------------------------------------------------
SET SQL_SAFE_UPDATE = 0;

-- Sem o Where, iria atualizar todos os precos da Tabela
UPDATE tb_produtos SET  preco = 2.99 WHERE id = 1;

-- Para deletar um id dentro da Tabela 
DELETE FROM tb_ produtos WHERE id = 18; 
-- Inserindo IN depois do id e mais dados (1,3), será apagado os dois id na Tabela
DELETE FROM tb_produtos WHERE id IN (18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28);

-- -------------------------------------------------------------------------

-- Para definir o valor decimal, sendo 6 casas antes da vírgula e 2 depois 
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2); 

-- -------------------------------------------------------------------------



