#ONE to ONE
CREATE DATABASE relacoes;
USE relacoes;
CREATE TABLE estudantes(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    turma VARCHAR(5)
);
CREATE TABLE contatos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telefone VARCHAR(20),
    estudante_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);
SELECT * FROM estudantes;
INSERT INTO estudantes (nome,turma) VALUES ('Mateus', "304d");
INSERT INTO estudantes (nome,turma) VALUES ('João', "101a"); 
SELECT * FROM estudantes;
INSERT INTO contatos (telefone,estudante_id) VALUES ('(48)99999-9999', 1); 
INSERT INTO contatos (telefone,estudante_id) VALUES ('(51)88888-8888', 2); 
SELECT * FROM contatos;
SELECT estudantes.nome, estudantes.turma, contatos.telefone
FROM estudantes
JOIN contatos ON contatos.estudante_id = estudantes.id;

# ONe to MANY
DROP ALTER data_nascimento;
CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    data_nascimento DATE
);
CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    qtd_itens INT(10),
    total FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
SELECT * FROM clientes;
INSERT INTO clientes (nome,data_nascimento) VALUES ('Mateus', "1991-05-01");
INSERT INTO clientes (nome,data_nascimento) VALUES ('João', "1996-12-2"); 
SELECT * FROM clientes;
INSERT INTO pedidos (qtd_itens,total, cliente_id) VALUES (5,214.01, 1); 
INSERT INTO pedidos (qtd_itens,total, cliente_id) VALUES (2,350.01, 2); 
SELECT * FROM pedidos;
SELECT clientes.nome, pedidos.id AS pedido_id
FROM clientes
JOIN pedidos ON pedidos.cliente_id = clientes.id;