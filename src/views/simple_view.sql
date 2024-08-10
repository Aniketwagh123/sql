-- SELECT * from employees;

-- create an simple view
CREATE VIEW simple_view AS
SELECT first_name,
    last_name,
    salary
FROM employees
WHERE salary > 50000;

SELECT *
from simple_view;