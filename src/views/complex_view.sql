-- SELECT * from employees;

-- create an complex view
CREATE VIEW complex_view AS
SELECT department_id,
    AVG(salary) as avrage_sal 
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id
HAVING avrage_sal > 0;


SELECT *
from complex_view;