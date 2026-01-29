
-- create a database name hospitaldb
create database hospitaldb;
use hospitaldb;
select database();

-- create a table patients 
create table patients(
    patientid int primary key ,
    name varchar(50) not null ,
    age int,
    gender varchar(50),
    disease varchar(100),
    city varchar(100),
    billamount int
);

-- create a table doctors 
create table doctors(
    doctorid int primary key ,
    name varchar(100) not null ,
    specialization varchar(100),
    experience int,
    city varchar(100)
);
