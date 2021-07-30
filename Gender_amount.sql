USE employees;
-- SELECT gender from employees;
DELIMITER $$
DROP PROCEDURE IF EXISTS gender_amount;

CREATE PROCEDURE gender_amount (
	
)
-- total 300,020 people
-- select (case when sex=0 then 'Female' else 'male' end) name,
-- 		count(id) value, 
-- 		count(id)/(select count(id) from t_member) proportion	
--         from  t_member
--         group by sex
-- 
BEGIN 
	SELECT gender AS "Gender", COUNT(*) AS "Number of employees"
    FROM employees
    GROUP BY gender
    ORDER BY gender;
END $$
DELIMITER ; 
CALL gender_amount;