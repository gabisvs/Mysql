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

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) 
VALUES ("tomate", 100, "2024-12-16", 8.00); 
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã", 20, "2023-12-15", 5.00);
INSERT INTO Tb_produtos(nOme, Quantidade, Datavalidade, Preco) 
VALUES ("Laranja", 50, "2023-12-15", 10.00);
INSERT INTO Tb_produtos(nOme, Quantidade, Datavalidade, Preco) 
vaLUES ("Banana", 200, "2023-12-15", 12.00);
INSERT INTO Tb_produtos(nOme, Quantidade, Datavalidade, Preco) 
VALUES ("Uva", 1200, "2023-12-15", 30.00);
INSERT INTO Tb_produtos(nOme, Quantidade, Datavalidade, Preco) 
VALUES ("Pêra", 500, "2023-12-15", 2.99);


-- Visualizar todos os dados na Tabela
selECT * fRoM TB_produtos; 

-- Selecionar algum dado para visualizar na Tabela
select nome, preco from tb_produtos; 

-- Para buscar algum dado específico na Tabela 
select * from tb_produtos where id = 2; 

-- Para buscar algum dado com Operadores Relacionais na Tabela 
select * from tb_produtos where preco > 5.00; 

-- Selecionando dados com os Operadores Lógicos na Tabela
select * from tb_produtos where preco > 5 and quantidade < 100; 

-- ------------------------------------------------------------------------
-- Para adicionar uma nova Tabela
alter table tb_produtos add descricao varchar(255);

-- Para apagar uma Tabela 
alter table tb_produtos drop descricao; 

-- Para alterar o nome na Tabela
alter table tb_produtos change nome nomeproduto varchar(255); 

-- ------------------------------------------------------------------------
SET SQL_SAFE_UPDATE = 0;

-- Sem o Where, iria atualizar todos os precos da Tabela
update tb_produtos set  preco = 2.99 where id = 1;

-- Para deletar um id dentro da Tabela 
delete from tb_ produtos where id = 1; 
-- Inserindo IN depois do id e mais dados (1,3), será apagado os dois id na Tabela
-- delete from tb_ produtos where id in (1,3); 

-- -------------------------------------------------------------------------

-- Para definir o valor decimal, sendo 6 casas antes da vírgula e 2 depois 
alter table tb_produtos modify preco decimal(6,2); 

-- -------------------------------------------------------------------------





