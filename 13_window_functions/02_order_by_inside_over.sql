SELECT DISTINCT d.dept_name ,COUNT(e.emp_no) OVER(PARTITION BY d.dept_name ORDER BY d.dept_name ASC)
FROM employees e 
JOIN current_dept_emp cde on e.emp_no = cde.emp_no
JOIN departments d on cde.dept_no = d.dept_no;
