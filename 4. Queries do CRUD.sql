CREATE DATABASE cadastro; 
USE cadastro;
CREATE TABLE pessoas (nome VARCHAR(50), rg VARCHAR(11), cpf VARCHAR(11), limite INT);
INSERT INTO pessoas (nome,rg,cpf,limite) VALUES ("Alysson Hyago", "7379530", "06045967402", "1000");
INSERT INTO pessoas (nome,rg,cpf,limite) VALUES ("PEdro", "2579530", "02245967402", "1000");
INSERT INTO pessoas (nome,rg,cpf,limite) VALUES ("Jessyca", "7379630", "05045967402", "1000");
INSERT INTO pessoas (nome,rg,cpf,limite) VALUES ("Carmem", "7378730", "08745967402", "1000");
INSERT INTO pessoas (nome,rg,cpf,limite) VALUES ("Karelly", "3279530", "06245967402", "1000");
SELECT * FROM pessoas;
SET SQL_SAFE_UPDATES = 0;
UPDATE pessoas SET limite = 0;
SELECT * FROM pessoas;
UPDATE pessoas SET limite = 1000 WHERE nome = "Jessyca";
UPDATE pessoas SET limite = 10000 WHERE nome = "Alysson Hyago";
UPDATE pessoas SET limite = 1000 WHERE nome = "carmem";
DELETE FROM pessoas WHERE nome = "Karelly";
DELETE FROM pessoas WHERE limite > 2000;

