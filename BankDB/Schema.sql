-- create the sql data base on name bankdb 
-- use the bankdb data ;
    create database bankdb;
    use bankdb;

-- create the table name account
    create table account(
        accountNO int primary key ,
        name varchar(100) not null ,
        branch varchar(100),
        city varchar(100),
        balance int,
        accounttype varchar(50),
        opendate varchar(50)
    );

-- create the table name loans 
    create table loans(
        loanid int primary key ,
        accountNO int not null ,
        loantype varchar(50),
        amount int,
        issuedate varchar(50)
    );
