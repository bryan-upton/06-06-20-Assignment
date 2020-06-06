USE employees;
DESC dept_emp;
DESC employees;
DESC departments;
DESC salaries;
DESC titles;

SELECT title, COUNT(*) FROM employees e
INNER JOIN titles t
ON t.emp_no = e.emp_no
WHERE birth_date >= '1965-01-01'
GROUP BY title;

SELECT title, ROUND(AVG(salary), 2) FROM salaries s
INNER JOIN titles t
ON t.emp_no = s.emp_no
GROUP BY title;

SELECT d.dept_name, SUM(s.salary) FROM departments d
INNER JOIN dept_emp de ON de.dept_no = d.dept_no
INNER JOIN salaries s ON s.emp_no = de.emp_no 
GROUP BY (d.dept_name)
HAVING d.dept_name = 'Marketing';
