-- CREATE table test_trigger(
--     id int AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255),
--     marks int
-- );

-- INSERT INTO test_trigger (name, marks) VALUES
-- ('Alice', 85),
-- ('Bob', 92),
-- ('Charlie', 78),
-- ('Diana', 88),
-- ('Eve', 95);


-- DELIMITER $$

-- CREATE TRIGGER before_insert_test_trigger
-- BEFORE INSERT ON test_trigger
-- FOR EACH ROW
-- BEGIN
--     IF NEW.marks IS NULL THEN
--         SET NEW.marks = 0; -- Set default marks to 0 if not provided
--     END IF;
-- END$$

-- DELIMITER ;



-- Create a log table for demonstration
-- CREATE TABLE log_table (
--     log_id INT AUTO_INCREMENT PRIMARY KEY,
--     log_message VARCHAR(255),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- DELIMITER $$

-- CREATE TRIGGER after_insert_test_trigger
-- AFTER INSERT ON test_trigger
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO log_table (log_message)
--     VALUES (CONCAT('New record inserted: ID = ', NEW.id, ', Name = ', NEW.name, ', Marks = ', NEW.marks));
-- END$$

-- DELIMITER ;

-- INSERT INTO test_trigger (name) VALUES
-- ('Haripritam');

-- select * from test_trigger;
-- SELECT * from log_table;


