-- Data Analysis

-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select   emp.emp_no as "Employee Number"
		,emp.last_name as "Last Name"
		,emp.first_name as "First Name"
		,emp.gender as "Gender"
		,sal.salary as "Salary"
from public.employees emp
inner join public.salaries sal
	on sal.emp_no=emp.emp_no

-- List employees who were hired in 1986.
select 	 emp_no as "Employee Number"
		,last_name as "Last Name"
		,first_name as "First Name"
		,gender as "Gender"
		,hire_date as "Hired Date"
from public.employees
where hire_date>='1986-01-01' and hire_date<='1986-12-31'

-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.
select	deptm.dept_no as "Department Number"
		,dept.dept_name as "Department Name"
		,deptm.emp_no as "Manager Employee Number"
		,emp.last_name as "Last Name"
		,emp.first_name as "First Name"
		,deptm.from_date as "Employment Start Date"
		,deptm.to_date as "Employment End Date"
from dept_manager deptm
inner join departments  dept
	on deptm.dept_no=dept.dept_no
inner join employees emp
	on deptm.emp_no=emp.emp_no
order by deptm.dept_no,deptm.emp_no 


-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select	emp.emp_no as "Employee Number"
		,emp.last_name as "Last Name"
		,emp.first_name as "First Name"
		,dept.dept_name as "Department Name"
from dept_emp depte
inner join departments  dept
	on depte.dept_no=dept.dept_no
inner join employees emp
	on depte.emp_no=emp.emp_no
order by emp.emp_no

-- List all employees whose first name is "Hercules" and last names begin with "B."
select	emp_no as "Employee Number"
		,last_name as "Last Name"
		,first_name as "First Name"
from employees
where first_name='Hercules' and last_name like 'B%'

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
select	emp.emp_no as "Employee Number"
		,emp.last_name as "Last Name"
		,emp.first_name as "First Name"
		,dept.dept_name as "Department Name"
from dept_emp depte
inner join departments  dept
	on depte.dept_no=dept.dept_no
inner join employees emp
	on depte.emp_no=emp.emp_no
where dept.dept_name='Sales'
order by emp.emp_no

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

select	emp.emp_no as "Employee Number"
		,emp.last_name as "Last Name"
		,emp.first_name as "First Name"
		,dept.dept_name as "Department Name"
from dept_emp depte
inner join departments  dept
	on depte.dept_no=dept.dept_no
inner join employees emp
	on depte.emp_no=emp.emp_no
where dept.dept_name in ('Sales', 'Development')
order by dept.dept_name, emp.emp_no

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name as "Employee Last Name"
		,count(distinct last_name) as "Number of Unique Last Name"
from employees
group by last_name
order by "Number of Unique Last Name" Desc


		