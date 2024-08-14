DELIMITER $$

CREATE PROCEDURE get_dept_statistics(
    IN dept_id INT,
    OUT total_salary_out DECIMAL(10, 2),
    OUT avg_salary_out DECIMAL(10, 2),
    OUT num_employees_out INT
)
BEGIN
    SELECT SUM(salary), AVG(salary), COUNT(id)
    INTO total_salary_out, avg_salary_out, num_employees_out
    FROM employees
    WHERE department_id = dept_id;
END$$

DELIMITER ;

call get_dept_statistics(1,@total_salary_out, @avg_salary_out, @num_employees_out);

select @avg_salary_out,  @avg_salary_out, @num_employees_out;

