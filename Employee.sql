create database DBMSLAB;
use DBMSLAB;
create table employee(emp_no int(20) NOT NULL PRIMARY KEY,emp_name varchar(50) NOT NULL,DOB date NOT NULL,address varchar(200) NOT NULL,DOJ date NOT NULL,mob_no int(20) NOT NULL,dept_no int(20) DEFAULT NULL,salary int(200) NOT NULL);
DESC employee;
create table department(dept_no int(20) NOT NULL,dept_name varchar(20) NOT NULL,location varchar(20) NOT NULL);