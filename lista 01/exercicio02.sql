CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL NOT NULL, 
estoque DECIMAL NOT NULL, 
categoria VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

DESCRIBE tb_produtos; 

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Sacola Reutilizável', 'Sacola ecológica feita de algodão orgânico, ideal para compras sustentáveis.', 15.99, 50, 'Acessórios');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Canudo de Aço Inoxidável', 'Canudo reutilizável de aço inoxidável com escova de limpeza.', 5.99, 100, 'Utensílios de Cozinha');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Kit de Talheres de Bambu', 'Kit com garfo, faca e colher de bambu, perfeito para refeições ecológicas.', 12.99, 30, 'Utensílios de Cozinha');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Garrafa Térmica', 'Garrafa térmica de aço inoxidável, mantém bebidas quentes ou frias por horas.', 25.99, 20, 'Acessórios');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Escova de Dente Biodegradável', 'Escova de dente feita de bambu, completamente biodegradável e ecológica.', 3.99, 200, 'Higiene Pessoal');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Sabonete Artesanal', 'Sabonete natural feito à mão com ingredientes orgânicos, sem parabenos e sulfatos.', 6.50, 100, 'Higiene Pessoal');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Pasta de Dente Natural', 'Pasta de dente feita com ingredientes naturais e embalagens recicláveis.', 4.99, 150, 'Higiene Pessoal');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES ('Mochila Ecológica', 'Mochila feita de materiais reciclados, ideal para uso diário e sustentável.', 49.99, 15, 'Acessórios');

SELECT * FROM tb_produtos; 

-- Maior que 500,00
SELECT * FROM tb_produtos where preco > 500.00; 

-- Menor que 500,00 
SELECT * FROM tb_produtos where preco < 500.00; 

-- Atualizar 
SET SQL_SAFE_UPDATE = 1;

update tb_produtos set preco = 150.00 where id = 8;

-- Decimal
alter table tb_produtos modify preco decimal(6,2); 