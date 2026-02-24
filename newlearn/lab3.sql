create database companydb1;
use companydb1;

create table department(
    dept_id int primary key ,
    dept_name varchar(50) unique not null ,
    location varchar(50) not null
);

create table employee(
    emp_id int primary key ,
    emp_name varchar(100) not null ,
    age int check ( age >=21 ),
    salary int check ( salary>0 ),
    dept_id int,
    constraint fk_emp_dept
    foreign key (dept_id) references department(dept_id)
);

create table project(
    project_id int primary key,
    project_name varchar(100) not null ,
    budget int check ( budget> 100000 ),
    dept_id int,
    constraint fk_proj_dept
    foreign key (dept_id) references department(dept_id)
);

insert into department values
                           (1, 'HR', 'Bangalore'),
(2, 'Finance', 'Mumbai'),
(3, 'Engineering', 'Bangalore'),
(4, 'Marketing', 'Delhi'),
(5, 'Sales', 'Chennai'),
(6, 'Support', 'Hyderabad'),
(7, 'Testing', 'Bangalore'),
(8, 'R&D;', 'Pune'),
(9, 'Admin', 'Delhi'),
(10, 'Security', 'Mumbai');

select * from department;


insert into employee values
                         (101, 'Amit', 25, 40000, 1),
(102, 'Neha', 28, 55000, 3),
(103, 'Rahul', 30, 60000, 3),
(104, 'Priya', 26, 45000, 2),
(105, 'Karan', 35, 70000, 4),
(106, 'Sneha', 24, 35000, 5),
(107, 'Arjun', 29, 50000, 6),
(108, 'Meera', 31, 65000, 8),
(109, 'Rohit', 27, 48000, 7),
(110, 'Pooja', 32, 72000, 2);

select * from employee;

insert into project values
                        (201, 'Payroll System', 500000, 2),
(202, 'Website Redesign', 300000, 4),
(203, 'Mobile App', 800000, 3),
(204, 'CRM System', 600000, 5),
(205, 'AI Research', 1200000, 8),
(206, 'Testing Automation', 400000, 7),
(207, 'Recruitment Portal', 250000, 1),
(208, 'Support Tracker', 200000, 6),
(209, ' Upgrade', 350000, 10),
(210, 'Internal Tool', 150000, 9);

select * from project;


-- test 1 forein key test

insert into employee values (120,'test',25,30000,50);

-- test 2 check contrein

insert into employee values  (121,'badage',18,30000,1);

-- test 3 check constrain salary

insert into employee values (122,'lowsalary',25,-5000,1);

-- test 4 check constrain primary key

insert into employee values (101,'duplicate',30,50000,1);

-- test 5 check constrain not null

insert into employee values (123,null,25,30000,1);

-- delete the employee from employe
delete from employee where dept_id= 8;

delete from employee where dept_id= 7;

-- join operations
-- inner join
select * from employee inner join department on employee.dept_id = department.dept_id;

-- left join

select * from employee left join department on employee.dept_id = department.dept_id;

-- right join
select * from employee right join department on employee.dept_id = department.dept_id;


--
select employee.emp_name, department.dept_name from employee left join department on employee.dept_id = department.dept_id union  select employee.emp_name,department.dept_name from employee right join department on employee.dept_id = department.dept_id ;

-- testing processes
show tables;
select project.budget , department.dept_name from project inner join department on project.dept_id = department.dept_id;
select * from employee;
select department.dept_name , sum(employee.salary) from department left join employee on department.dept_id = employee.dept_id group by dept_name;
select department.dept_id ,department.dept_name, project.budget from department left join project on department.dept_id = project.dept_id order by dept_id;
select department.dept_name, employee.emp_name, project.project_name from department join employee  on department.dept_id = employee.dept_id join project on department.dept_id = project.dept_id ;

select * from department left join employee on department.dept_id = employee.dept_id intersect  select * from department right join employee on department.dept_id = employee.dept_id limit 5;
select distinct department.dept_name,count(employee.emp_id) from department inner join employee on department.dept_id = employee.dept_id  group by dept_name ;

select emp_name  from employee where employee.emp_name regexp '^[^AEIOU]';
