CREATE TABLE departments (
	dept_no char(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);
SELECT * FROM departments

CREATE TABLE titles(
	title_id char(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30)
);
SELECT * FROM titles

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title char(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex char(1),
	hire_date DATE,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);
SELECT * FROM employees

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no char(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no)
);
SELECT * FROM dept_emp

CREATE TABLE dept_manager(
	dept_no char(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);
SELECT * FROM dept_manager

CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL
);
SELECT * FROM salaries



