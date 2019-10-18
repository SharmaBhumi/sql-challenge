--drop table if exists Dept_Emp;
--drop table if exists Title;
--drop table if exists Salaries;

create table Department(
dept_no varchar(5) Primary Key not null,
dept_name varchar(20)
);

create table Employee(
emp_no int Primary Key not null,
birth_date date,
first_name varchar(20),
last_name varchar(30),
gender varchar(1),
hire_date date
);

create table Dept_Emp(
emp_no int not null,
dept_no varchar(5),
from_date date,
to_date date);

create table Dept_Mgr(
dept_no varchar(5) ,
emp_no int  not null ,
from_date date,
to_date date
);


create table Salaries(
emp_no int  not null,
salary int,
from_date date,
to_date date);


create table Title(
emp_no int   not null,
title varchar(30),
from_date date,
to_date date);
