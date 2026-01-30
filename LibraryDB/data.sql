-- DATA TO INSERT ONTHE TABLE BOOKS

insert into books values
                      (100,'Indias war ', 'Arjun Subramaniam','Military History',700,'HarperCollins India',2016),
                      (101,'Watershed 1967','Probal DasGupta','Military history',500,'Juggernaut Books',2020),
                      (102,'India’s Most Fearless','Shiv Aroor & Rahul Singh','Army / True soldier stories',400,'NA',2018),
                      (103,'Beyond Fear','Ian Cardozo','Personal military narratives',800,'NA',2000),
                      (104,'1971: Stories of Grit and Glory from the Indo-Pak War','Ian Cardozo','Military history / Indian Army stories',700,'coomercial editions',2016),
                      (105,'1971: A Global History of the Creation of Bangladesh','Srinath Raghavan','Military / diplomatic history',1000,'common in Harper/Westland editions', 2013),
                      (106,'India’s Most Fearless 3','Shiv Aroor & Rahul Singh','Army stories / Indian armed forces',400,'Pan Macmillan India',2020),
                      (107,'India’s Wars II: A Military History 1972–2020','Arjun Subramaniam','Modern Military History',600,'HarperCollins India',2020);

select * from books;   -- SEE THE DATA AFTER THE INSERT ON THE BOOKS

-- DATA TO INSERT ON THE TABLE MEMBER
insert into member values
                       (101, 'Amit Sharma', 'Delhi', '9876543210', '2023-01-15'),
                       (102, 'Riya Verma', 'Mumbai', '9123456780', '2023-02-10'),
                       (103, 'Suresh Kumar', 'Chennai', '9988776655', '2022-11-25'),
                       (104, 'Neha Patel', 'Ahmedabad', '9090909090', '2023-03-05'),
                       (105, 'Rahul Singh', 'Bangalore', '9345678123', '2022-12-18'),
                       (106, 'Pooja Mehta', 'Pune', '9012345678', '2023-04-01'),
                       (107, 'Vikas Rao', 'Hyderabad', '9888123456', '2023-01-28'),
                       (108, 'Anjali Nair', 'Kochi', '9765432109', '2022-10-09');

select * from member;   -- SEE THE DATA AFTER THE INSERT ON THE MEMBER 
