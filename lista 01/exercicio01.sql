CREATE DATABASE db_departamentopessoal;

USE db_departamentopessoal;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
dataAdmissao DATE,
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);

DESCRIBE tb_colaboradores;

INSERT INTO tb_colaboradores (nome, cargo, dataAdmissao, salario)
VALUES ("Érica Virgilio", "Diretora", "2023-06-13", 13000.00); 

INSERT INTO tb_colaboradores (nome, cargo, dataAdmissao, salario)
VALUES ("Vanderlei Damico", "Gerente Geral", "2024-01-25", 10000.00); 

INSERT INTO tb_colaboradores (nome, cargo, dataAdmissao, salario)
VALUES ("Gabrielli Virgilio", "Coordenadora", "2023-05-02", 8500.00); 

INSERT INTO tb_colaboradores (nome, cargo, dataAdmissao, salario)
VALUES ("Giovanna Virgilio", "SubGerente", "2023-07-16", 5000.00); 

INSERT INTO tb_colaboradores (nome, cargo, dataAdmissao, salario)
VALUES ("Luis Henrique", "Auxiliar Geral", "2024-03-07", 2500.00); 

SELECT * FROM tb_colaboradores; 

-- Maior que 2.000,00
SELECT * FROM tb_colaboradores where salario > 2000.00; 

-- Menor que 2.000,00 
SELECT * FROM tb_colaboradores where salario < 2000.00; 

-- Atualizar 
SET SQL_SAFE_UPDATE = 1;

update tb_colaboradores set  salario = 14500.00 where id = 1;

-- Decimal
alter table tb_produtos modify preco decimal(6,2); 