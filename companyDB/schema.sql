-- database creation
create database companydb;
use companydb;

-- create table name employee and departments 
create table employees(
    empid int primary key ,
    name varchar(1000) not null ,
    department varchar(100),
    designation varchar(50),
    salary int,
    experience int,
    city varchar(100)
);

create table departments(
    deptid int primary key ,
    deptname varchar(100) not null ,
    location varchar(100),
    hod varchar(100)
);
