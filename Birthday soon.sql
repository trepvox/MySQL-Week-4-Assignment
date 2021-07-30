USE employees;
DELIMITER $$
DROP PROCEDURE IF EXISTS birthday_soon;
CREATE PROCEDURE birthday_soon (
IN month_name varchar(9)
)

BEGIN 
	SELECT birth_date, concat(first_name, " ", last_name) AS NAME
    FROM employees
    WHERE month_name = MONTHNAME(birth_date)
    ORDER BY birth_date;
END $$
DELIMITER ; 
CALL birthday_soon("August");