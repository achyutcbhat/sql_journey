
-- inert the data on the employee table
insert into employees values
                          (101, 'Rahul',  'IT',        'Developer', 70000, 6, 'Bangalore'),
(102, 'Sneha',  'IT',        'Tester',    65000, 4, 'Bangalore'),
(103, 'Amit',   'HR',        'Executive', 45000, 2, 'Chennai'),
(104, 'Priya',  'HR',        'Manager',   80000, 8, 'Chennai'),
(105, 'Rohit',  'Finance',   'Analyst',   60000, 5, 'Mumbai'),
(106, 'Neha',   'Finance',   'Clerk',     35000, 0, 'Mumbai'),
(107, 'Vikas',  'Marketing', 'Executive', 50000, 3, 'Delhi'),
(108, 'Anjali', 'Marketing', 'Manager',   75000, 7, 'Delhi'),
(109, 'Karan',  'Sales',     'Salesman',  55000, 6, 'Hyderabad'),
(110, 'Pooja',  'IT',        'Lead',      90000, 10, 'Bangalore');

-- shows the data on employee
select * from employees;

-- insert the data on the departments table
insert into departments values
(1, 'HR',        'Chennai',    'Anita'),
(2, 'IT',        'Bangalore',  'Ramesh'),
(3, 'Finance',   'Mumbai',     'Suresh'),
(4, 'Marketing', 'Delhi',      'Priya'),
(5, 'Sales',     'Hyderabad',  'Kiran');

-- shows the data on departments 
select * from departments;
