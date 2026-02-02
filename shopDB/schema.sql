-- create the database 

create database shopdb;
use shopdb; 

-- create the table name product and customers 
create table product(
    productid int primary key ,
    productname varchar(100) not null ,
    catagory varchar(100),
    brand varchar(100),
    price int,
    stock int,
    rating int
);

create table customers(
    customerid int primary key ,
    name varchar(100) not null ,
    city varchar(100),
    phone varchar(15) unique ,
    email varchar(100) unique
);
