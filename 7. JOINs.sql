USE employees;
SELECT * FROM employees.salaries;

SELECT employees.first_name, employees.last_name, salaries.salary AS salario
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >=120000
ORDER BY salaries.salary DESC;

USE constraints;

INSERT INTO pessoas (nome, idade) VALUES ("José", 55);
SELECT * FROM pessoas;
SELECT pessoas.nome, enderecos.*
FROM pessoas
LEFT JOIN enderecos
ON pessoas.id = enderecos.pessoa_id;

Use employees;
SELECT employees.first_name, employees.last_name, salaries.salary AS salario
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.first_name, salaries.salary, titles.title
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
INNER JOIN titles
On employees.emp_no = titles.emp_no
WHERE salaries.salary > 125000;
