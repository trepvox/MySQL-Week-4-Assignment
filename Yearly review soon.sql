USE employees;
DELIMITER $$
DROP PROCEDURE IF EXISTS yearly_review_soon_by_month;

CREATE PROCEDURE yearly_review_soon_by_month (
	IN month_name varchar(9)
)

BEGIN 
	SELECT hire_date, concat(first_name, " ", last_name) AS NAME
    FROM employees
    WHERE month_name = MONTHNAME(hire_date)
    ORDER BY hire_date;
END $$
DELIMITER ; 
CALL yearly_review_soon_by_month("October");