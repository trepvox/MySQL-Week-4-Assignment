USE employees;
DELIMITER $$
DROP PROCEDURE IF EXISTS employee_count_by_dept;
CREATE PROCEDURE employee_count_by_dept(

)

BEGIN
	Select dept_name AS "Department name" , COUNT(*) AS "Number of employees"
    FROM employees e
    INNER JOIN dept_emp USING (emp_no)
   	 INNER JOIN departments d USING (dept_no)
    GROUP BY dept_name;
END $$

DELIMITER ;
CALL employee_count_by_dept;