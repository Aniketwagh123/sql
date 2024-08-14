USE ecommerce;

DELIMITER $$

CREATE PROCEDURE get_top_2()
BEGIN
    SELECT *
    FROM employees
    ORDER BY salary DESC
    LIMIT 2;
END $$

DELIMITER ;



CALL get_top_2();

