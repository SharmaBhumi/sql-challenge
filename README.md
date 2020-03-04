# SQL - Employee Database

![sql.png](EmployeeSQL/employee_ERD.png)

These tasks are performed for the given csv files for Employee data:

1. Data Modeling

2. Data Engineering

3. Data Analysis

#### Data Modeling

* Inspect the CSVs and sketch out an ERD of the tables.

#### Data Engineering

* Create table schema and import the data for each of the six CSV files

#### Data Analysis
##### Run SQL to find out following:

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Data Exploration using SQLAlchemy 

1. Create a histogram to visualize the most common salary ranges for employees.
[Histogram](EmployeeSQL/common_salary.PNG)

2. Create a bar chart of average salary by title.
[BarChart](EmployeeSQL/average_salary_by_title.PNG)
