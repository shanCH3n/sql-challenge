# Project Description:
Examine what remains of an employee database of people that a fictional company employed during the 1980s and 1990s. An entity relationship diagram (Employee_ERD.png) was created to visualise the relationship between the six csv files that made up the employee database. Table schemata were created for each csv file. Results of analysis are published in the 'EmployeeSQL' folder.

### The following queries were conducted:
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B".
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employees last names.

### Figures Created:
1. Histogram that visualises employee salary ranges (Salary_Distribution.png)
2. Bar chart of average salary by title (Average_Salary_by_Title.png )

# Packages/Dependencies Used

postgresql

pandas

matplotlib.pyplot

numpy

psycopg2

# Folder Contents

## In 'EmployeeSQL' folder

Employee_ERD.png (Image file of Entity Relationship Diagram of csv files in 'data' folder)

schema.sql (sql file of table schemata)

queries.sql (sql file of queries)

employee_BONUS.ipynb (Jupyter Notebook for bonus analysis)

Salary_Distribution.png (Histogram that visualises employee salary ranges)

Average_Salary_by_Title.png (Bar chart of average salary by title)

## In 'data' folder

departments.csv

dept_emp.csv

dept_manager.csv

employees.csv

salaries.csv

titles.csv
