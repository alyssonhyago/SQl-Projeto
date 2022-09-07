USE employees;
SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp; # Junta duas tabelas sem dados redundantes

SELECT dept_no FROM departments
UNION ALL SELECT dept_no FROM dept_emp; #retorna tudo das duas tabelas

SELECT gender, COUNT(gender) AS 'QTD por gênero'
FROM employees
GROUP BY gender;

SELECT hire_date, COUNT(hire_date) AS 'Data de contratação'
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;

#HAVING

SELECT hire_date, COUNT(hire_date) AS 'Data de contratação'
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) > 80
ORDER BY COUNT(hire_date) DESC;

#SUBQUERY

SELECT first_name, (
	SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
)AS soma_salario
FROM employees
ORDER BY emp_no DESC;

#EXISTS

SELECT first_name, emp_no, last_name, (
	SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees
WHERE EXISTS (
	SELECT salary
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
    HAVING SUM(salary) > 1000000
);

#ANY

SELECT first_name
FROM employees
WHERE emp_no = ANY (
	SELECT emp_no
    FROM salaries
    WHERE salary > 150000
);


