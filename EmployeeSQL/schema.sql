ALTER DATABASE employees_db SET datestyle TO "ISO, MDY";

--Remove tables if they exist. FOR rebuild only.
DROP TABLE IF EXISTS titles CASCADE
DROP TABLE IF EXISTS employees CASCADE
DROP TABLE IF EXISTS departments CASCADE
DROP TABLE IF EXISTS dept_emp CASCADE
DROP TABLE IF EXISTS dept_manager CASCADE
DROP TABLE IF EXISTS salaries CASCADE

---- CREATE TABLES & IMPORT EACH RESPECTIVE CSV (in order of creation) ----

--Create the table for titles csv
CREATE TABLE titles(
		title_id VARCHAR(5) PRIMARY KEY NOT NULL,
		title VARCHAR(30) NOT NULL
);

--- Check if titles table has been created and data has been imported.
--- SELECT * FROM titles


--Create the table for employees csv
CREATE TABLE employees(
		emp_no INT PRIMARY KEY NOT NULL,
		emp_title_id VARCHAR(5) NOT NULL,
		birth_date DATE NOT NULL,
		first_name VARCHAR(30) NOT NULL,
		last_name VARCHAR(30) NOT NULL,
		sex VARCHAR(1) NOT NULL,
		hire_date DATE NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--- Check if employees table has been created and data has been imported.
--- SELECT * FROM employees


--Create the table for departments csv
CREATE TABLE departments(
		dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
		dept_name VARCHAR(40) NOT NULL
);

--- Check if departments table has been created and data has been imported.
--- SELECT * FROM departments


--Create the table for dept_emp csv
CREATE TABLE dept_emp(
		emp_no INT NOT NULL,
		dept_no VARCHAR(5) NOT NULL,
		PRIMARY KEY (emp_no, dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),	
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)		
);

--- Check if dept_emp table has been created and data has been imported.
--- SELECT * FROM dept_emp


--Create the table for dept_manager csv
CREATE TABLE dept_manager(
		dept_no VARCHAR(5) NOT NULL,
		emp_no INT NOT NULL,
		PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--- Check if dept_manager table has been created and data has been imported.
--- SELECT * FROM dept_manager


--Create the table for salaries csv
CREATE TABLE salaries(
		emp_no INT PRIMARY KEY NOT NULL,
		salary INT NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--- Check if salaries table has been created and data has been imported.
--- SELECT * FROM salaries