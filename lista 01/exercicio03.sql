CREATE DATABASE db_escola;

USE db_escola; 

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade DECIMAL NOT NULL,
serie VARCHAR(255) NOT NULL,
nota DECIMAL NOT NULL,
responsavel VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

DESCRIBE tb_estudantes; 

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Ana Clara', 14, '8º Ano', 8.5, 'Maria Silva');

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Bruno Souza', 15, '9º Ano', 6.8, 'Carlos Souza');

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Carla Dias', 13, '7º Ano', 9.2, 'Fernanda Dias');

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Daniel Costa', 16, '1º Ano EM', 8.0, 'Rodrigo Costa');

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Eduarda Lima', 17, '2º Ano EM', 8.7, 'Aline Lima');

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Felipe Martins', 15, '9º Ano', 6.5, 'Lucas Martins');

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Gabriela Alves', 12, '6º Ano', 9.0, 'Paula Alves');

INSERT INTO tb_estudantes(nome, idade, serie, nota, responsavel)
VALUES ('Hugo Fernandes', 18, '3º Ano EM', 8.3, 'Renato Fernandes');

SELECT * FROM tb_estudantes; 

-- Maior que 7.0 
SELECT * FROM tb_estudantes where nota > 7; 

-- Menor que 7.0 
SELECT * FROM tb_estudantes where nota < 7; 

-- Atualizar 
SET SQL_SAFE_UPDATE = 1;

UPDATE tb_estudantes SET nota = 6.00 where id = 2;

UPDATE tb_estudantes SET nota = 5.00 where id = 6;

-- Decimal 
ALTER TABLE tb_estudantes modify nota decimal(6,2); 