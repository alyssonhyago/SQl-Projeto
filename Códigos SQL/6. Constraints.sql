CREATE DATABASE constraints;
USE constraints; 
CREATE TABLE pessoas (
	nome VARCHAR(100) NOT NULL,
    idade INT
);
INSERT INTO pessoas (nome, idade) VALUES ("Alysson",  26);
SELECT * FROM pessoas;
INSERT INTO pessoas (nome, idade) VALUES ("Jessyca",  28);
INSERT INTO pessoas (nome, idade) VALUES ("Mateus",  30);
ALTER TABLE pessoas ADD COLUMN email VARCHAR(255) UNIQUE;
INSERT INTO pessoas (nome, idade, email) VALUES ("Dorival",  50, "dorival@gmail.com");
SELECT * FROM pessoas;
INSERT INTO pessoas (nome, idade, email) VALUES ("Junior",  50, "dorival@gmail.com");# UNIQUE bloqueia a repetição do email
CREATE TABLE produtos(
	id INT NOT NULL,
    nome VARCHAR(255),
    sku VARCHAR(10),
    PRIMARY KEY (id)
    );
    INSERT INTO produtos (id, nome, sku) VALUES ("1",  "Batedeira", "123asd");
    INSERT INTO produtos (id, nome, sku) VALUES ("2",  "fogão", "12345");
    INSERT INTO produtos (id, nome, sku) VALUES ("3",  "TV", "12345");
    UPDATE produtos SET sku = "6789" WHERE id = 3; #Atualiza sku da tabela produtos onde o id é 3
    SELECT * FROM produtos;
    CREATE TABLE frutas (
		id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
		nome VARCHAR(100)
    );
    INSERT INTO frutas VALUES ("1", "mamão" );
    INSERT INTO frutas (nome) VALUES ("morango" );
	SELECT * FROM frutas;
    INSERT INTO frutas (nome) VALUES ("Uva" );
    DELETE FROM frutas WHERE id = 3;
    SELECT * FROM frutas;
    INSERT INTO frutas (nome) VALUES ("Uva" );
    DROP TABLE pessoas;
    CREATE TABLE pessoas(
		id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        nome VARCHAR(100) NOT NULL,
        idade INT
    );
    CREATE TABLE enderecos (
		id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        rua VARCHAR(100),
        numero VARCHAR(10),
        pessoa_id INT NOT NULL,
        FOREIGN KEY (pessoa_id) REFERENCES pessoas (id)
    );
    
INSERT INTO pessoas (nome, idade) VALUES ("Alysson", 26 );
INSERT INTO enderecos (rua,numero, pessoa_id) VALUES ("Rua Roduigues ALves ", 1440, 1 );
SELECT * FROM enderecos;
SELECT * FROM pessoas;
DROP TABLE pessoas; # foreingn key nao permite

CREATE INDEX index_nome
ON pessoas(nome);

    
    