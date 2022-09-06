#CHAR_LENGTH
USE sakila;
SELECT first_name, CHAR_LENGTH(first_name) AS qtd_chars FROM actor;

#Concat

USE empresa;
SELECT CONCAT(nome, " tem ", idade, " anos de idade") AS nome_e_idade
FROM funcionarios;
