-- NOT sipported in mysql, we can use folllow
-- CREATE TABLE department_salary_mv AS
-- SELECT department_id,
--        AVG(salary) AS average_salary,
--        SUM(salary) AS total_salary,
--        COUNT(id) AS num_employees
-- FROM employees
-- GROUP BY department_id;


-- -- You can create a procedure to refresh the data in this table:

-- sql
-- Copy code
-- CREATE PROCEDURE refresh_department_salary_mv()
-- BEGIN
--     TRUNCATE TABLE department_salary_mv;
--     INSERT INTO department_salary_mv (department_id, average_salary, total_salary, num_employees)
--     SELECT department_id,
--            AVG(salary) AS average_salary,
--            SUM(salary) AS total_salary,
--            COUNT(id) AS num_employees
--     FROM employees
--     GROUP BY department_id;
-- END;



CREATE MATERIALIZED VIEW department_salary_mv AS
SELECT department_id,
    AVG(salary) AS average_salary,
    SUM(salary) AS total_salary,
    COUNT(id) AS num_employees
FROM employees
GROUP BY department_id;