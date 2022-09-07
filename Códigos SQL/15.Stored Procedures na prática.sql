Use employees;
DELIMITER //
CREATE PROCEDURE fullName()
BEGIN
	SELECT CONCAT(first_name, " ", last_name) AS full_name FROM employees;
END//

CALL fullName();

#Mostra todas as procedures existentes
SHOW PROCEDURE STATUS

#Excluindo uma procedure

DROP PROCEDURE selectAll;

#Detalhes da procedure

SHOW CREATE PROCEDURE fullName

#Criando uma procedure 
DELIMETER //
CREATE PROCEDURE employeesNameAndSalaries()
BEGIN
	SELECT ep.first_name, sa.salary FROM employees AS ep
    JOIN salaries AS sa ON ep.emp_no = sa.emp_no;
END//

SHOW PROCEDURE STATUS;

CALL employeesNameAndSalaries;

#Criando uma procedure complexa
DELIMETER //
CREATE PROCEDURE employeesHighSalary(
	IN highSalary INT
)
BEGIN
	SELECT ep.first_name, sa.salary FROM employees AS ep
    JOIN salaries AS sa ON ep.emp_no = sa.emp_no
    WHERE sa.salary > highSalary;
END//

SHOW PROCEDURE STATUS;

CALL employeesHighSalary(100000);
