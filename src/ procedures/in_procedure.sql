DELIMITER $$ CREATE PROCEDURE get_avg_sal_by_dept_id(IN dept_id INT) BEGIN
SELECT department_id,
    AVG(salary) AS average_salary
FROM employees
WHERE department_id = dept_id
GROUP BY department_id;
END $$ DELIMITER;



CALL get_avg_sal_by_dept_id(1);




SHOW PROCEDURE STATUS
WHERE Db = 'ecommerce'; 