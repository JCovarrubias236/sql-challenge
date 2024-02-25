--------------Data Analysis--------------
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT a.emp_no, a.last_name, a.first_name, a.sex, b.salary
FROM employees AS a
	JOIN salaries AS b ON b.emp_no = a.emp_no
;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name
FROM dept_manager AS a
	JOIN departments AS b ON b.dept_no = a.dept_no
	JOIN employees AS c ON c.emp_no = a.emp_no
;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT a.dept_no, a.emp_no, b.last_name,b.first_name,c.dept_name
FROM dept_emp AS a
	JOIN employees AS b ON b.emp_no = a.emp_no
	JOIN departments AS c ON c.dept_no = a.dept_no
;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'
;

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT a.dept_name, c.emp_no,c.last_name,c.first_name
FROM departments AS a
	JOIN dept_emp AS b ON b.dept_no = a.dept_no
	JOIN employees AS c on c.emp_no = b.emp_no
WHERE a.dept_name = 'Sales'
;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT c.emp_no, c.last_name, c.first_name, a.dept_name
FROM departments AS a
	JOIN dept_emp AS b ON b.dept_no = a.dept_no
	JOIN employees AS c on c.emp_no = b.emp_no
WHERE a.dept_name = 'Sales' OR a.dept_name = 'Development'
;

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) AS "# of Employees w/ Last Name"
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC
;



