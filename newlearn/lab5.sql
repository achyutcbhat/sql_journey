-- creating database 
create database procedures;
use procedures;
-- creating table 

create table students(
    student_id int primary key ,
    name varchar(50),
    department varchar(20),
    marks int
);
-- data insertion 
insert into students values
                         (1,'Rahul','CSE',78),
(2,'Ananya','AIML',85),
(3,'Kiran','IoT',35),
(4,'Megha','CSE',92);

select * from students;
-- demo procedure
delimiter $$
create procedure hello_demo()
begin
    select 'Hello Students';
end $$
delimiter ;
call hello_demo();
-- practical procedure on table
delimiter $$
create procedure show_students()
begin
    select * from students;
end $$
delimiter ;
call show_students();

delimiter $$
create procedure if_demo()
begin
    declare x int default 50;
    if x>=40
       then select 'pass';
       else select 'fail';
       end if;
end $$
delimiter ;
call if_demo();

-- if practical procedure
delimiter $$
create procedure pass_fail(in sid int)
begin
    declare m int;
    select marks into m from students where student_id=sid;
    if m>=40
        then select 'pass';
        else select 'fail';
        end if;
end $$
delimiter ;
call pass_fail(2);

-- parameter check
delimiter $$
create procedure param_demo(in x int)
begin
    select x*2;
end $$
delimiter ;
call param_demo(8);

-- parameter practial
delimiter $$
create procedure std_dept(in d varchar(20))
begin
    select * from students where department=d;
end $$
delimiter ;
call std_dept('cse');

-- loop demo
delimiter $$
create procedure loopdemo()
begin
    declare i int default 1;
    while i<=3
        do select i;
        set i=i+1;
        end while ;
end $$
delimiter ;
call loopdemo();

drop procedure count_students;
-- procedure of count student 
DELIMITER $$
CREATE PROCEDURE count_students()
BEGIN
DECLARE total INT;
SELECT COUNT(*) INTO total FROM students;
WHILE total>0 DO SELECT total; SET total=total-1; END WHILE;
END $$
DELIMITER ;
call count_students();
