-- create the database name libraryDB
-- use the libraryDB 

create database libraryDB;
use libraryDB;
select database();

-- CREATE THE TABLE NAME BOOKS 
create table books(
    bookid int primary key,
    name varchar(100) not null ,
    author varchar(100),
    catagory varchar(100),
    price int,
    publisher varchar(100),
    yearofpublish int
);

-- CREATE THE TABLE NAME MEMBER
create table member(
    memberid int primary key ,
    name varchar(50) not null,
    city varchar(50),
    phonenum varchar(12) unique ,
    joindate varchar(30)
);
