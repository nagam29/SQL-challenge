-- Data Engineering

-- Drop table if exists
drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table employees;
drop table salaries;
drop table titles;

-- departments table 
create table departments (
	dept_no VARCHAR(30) 
	,dept_name VARCHAR(30)
);

-- dept_emp table 
create table dept_emp (
	emp_no INTEGER 
	,dept_no VARCHAR(30) 
	,from_date DATE
	,to_date DATE
);

-- dept_manager table
create table dept_manager (
	dept_no VARCHAR(30)
	,emp_no INTEGER 
	,from_date DATE
	,to_date DATE
);

-- employees table
create table employees (
	emp_no INTEGER 
	,birth_date Date
	,first_name VARCHAR(30)
	,last_name VARCHAR(30)
	,gender VARCHAR
	,hire_date DATE
);

-- salaries table
create table salaries (
	emp_no INTEGER 
	,salary INTEGER
	,from_date DATE
	,to_date DATE
);

-- titles table
create table titles (
	emp_no INTEGER 
	,title VARCHAR(30)
	,from_date DATE
	,to_date DATE
);


-- Check whether importing csv data was successful
select *
from public.departments

select *
from public.dept_emp
limit 10

select *
from public.dept_manager
limit 10

select *
from public.employees
limit 10

select *
from public.salaries
limit 10

select *
from public.titles
limit 10


