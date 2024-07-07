SELECT NTILE(4) OVER(PARTITION BY S.salary ORDER BY s.salary DESC), s.salary, FIRST_VALUE(s.salary) OVER(ORDER BY s.salary DESC)
FROM salaries s;


SELECT 
    emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) as highest_paid_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) as highest_paid_overall
FROM employees;