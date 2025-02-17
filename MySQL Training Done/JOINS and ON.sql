--  JOINS

SELECT *
FROM Employee_demographics;

SELECT *
FROM Employee_salary;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN  employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    -- OUTER (LEFT and RIGHT) JOINS

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN  employee_salary AS sal
	ON dem.employee_id = sal.employee_id;  
    
    -- SELF JOIN
    
    SELECT emp1.employee_id AS emp_santa,
    emp1.first_name AS first_name_santa,
	emp1.last_name AS last_name_santa,
    emp2.employee_id AS emp_name,
    emp2.first_name AS first_name_emp,
	emp2.last_name AS last_name_emp
    FROM employee_salary emp1;
    
    -- JOINING multiple tables together 
SELECT *
FROM employee_demographics AS dem
INNER JOIN  employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
    ;
    
SELECT *
FROM parks_departments
    
    
    
    