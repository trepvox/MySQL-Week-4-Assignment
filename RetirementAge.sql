USE employees;

DROP PROCEDURE IF EXISTS retirement_age;
DELIMITER $$

CREATE PROCEDURE retirement_age(
	IN age INT
    
)

BEGIN
	SELECT * from employees 
    WHERE (YEAR(CURDATE())- YEAR(birth_date)) >= age 
    order by birth_date DESC;
END $$
DELIMITER ;
CALL retirement_age(65);
