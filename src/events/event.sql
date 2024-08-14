SET GLOBAL event_scheduler = ON;

DELIMITER $$

CREATE EVENT my_event
ON SCHEDULE EVERY 10 second
STARTS '2024-08-10 10:00:00'
DO
BEGIN
    -- SQL statements to be executed
    INSERT INTO log_table (log_message) VALUES ('shedular');
END$$

DELIMITER ;


DROP EVENT my_event;

SELECT * from log_table;