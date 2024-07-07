SELECT DISTINCT d.dept_name, AVG(s.salary) OVER(PARTITION BY d.dept_name), AVG(s.salary) OVER() as company_avg
FROM employees e
JOIN current_dept_emp cde on e.emp_no = cde.emp_no 
JOIN departments d on cde.dept_no = d.dept_no 
JOIN salaries s on s.emp_no = e.emp_no;

SELECT  DISTINCT cde.dept_no, COUNT(e.emp_no) over(PARTITION BY cde.dept_no) 
FROM employees e
JOIN current_dept_emp cde ON cde.emp_no = e.emp_no;
