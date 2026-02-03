
-- insert the data on account
insert into account values
                        (101, 'Ravi Kumar',   'Main',   'Chennai', 75000, 'Savings', '2023-01-10'),
(102, 'Anita Sharma', 'Main',   'Chennai', 62000, 'Current', '2022-12-15'),
(103, 'Suresh',       'City',   'Bangalore', 45000, 'Savings', '2023-02-20'),
(104, 'Priya',        'City',   'Bangalore', 30000, 'Savings', '2023-03-11'),
(105, 'Amit',         'City',   'Bangalore', 1500,  'Savings', '2023-04-05'),
(106, 'Neha',         'Town',   'Hyderabad', 900,   'Savings', '2023-05-18'),
(107, 'Rahul',        'Town',   'Hyderabad', 1200,  'Current', '2023-06-01'),
(108, 'Kiran',        'Town',   'Hyderabad', 52000, 'Savings', '2023-06-25'),
(109, 'Sneha',        'Main',   'Chennai', 88000, 'Current', '2023-07-14'),
(110, 'Vijay',        'City',   'Bangalore', 40000, 'Savings', '2023-08-10');

-- insert value on loan 
insert into loans values
                      (1, 101, 'Home Loan', 2000000, '2023-02-01'),
(2, 102, 'Car Loan',  600000,  '2023-03-10'),
(3, 103, 'Personal',  300000,  '2023-04-15'),
(4, 108, 'Home Loan', 1500000, '2023-05-20'),
(5, 109, 'Business',  2500000, '2023-06-18'),
(6, 110, 'Education', 400000,  '2023-07-05');

-- display the value of account and loan 
select * from account;
select * from loans;
