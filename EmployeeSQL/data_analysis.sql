--Data Analysis
--employee number, last name, first name, gender, and salary
--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no as "employee number",
first_name as "first name",
last_name as "last name",
gender ,
salary
from Employee e
join Salaries s
on e.emp_no=s.emp_no;

select count(*)
from Employee e
join Salaries s
on e.emp_no=s.emp_no;--"300024"

--2. List employees who were hired in 1986.
select * from Employee where date_part('year',hire_date) = '1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select 
d.dept_no as "department number",
d.dept_name as "department name",
dm.emp_no as "manager employee number",
e.last_name as "last name",
e.first_name as "first name",
dm.from_date as "employment start date",
dm.to_date as "employment end date"
from Department d
join Dept_Mgr dm on d.dept_no=dm.dept_no
join Employee e on e.emp_no=dm.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select 
de.emp_no as "employee number",
e.last_name as "last name", 
e.first_name as "first name",
d.dept_name as "department name"
from Dept_Emp as de
join Department as d on de.dept_no=d.dept_no
join Employee e on e.emp_no=de.emp_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."
select * from Employee
where first_name='Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select 
e.emp_no as "employee number", 
e.last_name as "last name", 
e.first_name as "first name", 
d.dept_name as "department name"
from Dept_Emp as de
join Department as d on de.dept_no=d.dept_no
join Employee e on e.emp_no=de.emp_no
where d.dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select 
e.emp_no as "employee number", 
e.last_name as "last name", 
e.first_name as "first name", 
d.dept_name as "department name"
from Dept_Emp as de
join Department as d on de.dept_no=d.dept_no
join Employee e on e.emp_no=de.emp_no
where d.dept_name='Sales' or d.dept_name='Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(last_name) as "employee last names count"
from Employee
group by last_name
order by "employee last names count" desc;