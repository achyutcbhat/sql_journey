--  inserting value on product table 

insert into product values
                     (1, 'Smartphone', 'Electronics', 'Samsung', 15000, 10, 4),
(2, 'Laptop', 'Electronics', 'Dell', 55000, 5, 5),
(3, 'Headphones', 'Electronics', 'Boat', 2000, 20, 4),
(4, 'Refrigerator', 'Appliances', 'LG', 32000, 3, 5),
(5, 'Microwave', 'Appliances', 'IFB', 12000, 0, 4),
(6, 'T-shirt', 'Clothing', 'Puma', 1200, 15, 4),
(7, 'Jeans', 'Clothing', 'Levis', 2500, 8, 5),
(8, 'Shoes', 'Footwear', 'Nike', 4500, 12, 5),
(9, 'Watch', 'Accessories', 'Titan', 6000, 6, 4),
(10, 'Backpack', 'Accessories', 'Wildcraft', 2800, 9, 4);

-- listing value of product 
select * from product;

-- inserting value to customers table 
insert into customers values
                          (101, 'Rahul Sharma', 'Delhi', 9876543210, 'rahul@gmail.com'),
(102, 'Priya Verma', 'Mumbai', 9876543211, 'priya@gmail.com'),
(103, 'Amit Patel', 'Ahmedabad', 9876543212, 'amit@gmail.com'),
(104, 'Sneha Iyer', 'Chennai', 9876543213, 'sneha@gmail.com'),
(105, 'Rohit Singh', 'Lucknow', 9876543214, 'rohit@gmail.com'),
(106, 'Kavya Reddy', 'Hyderabad', 9876543215, 'kavya@gmail.com'),
(107, 'Suresh Nair', 'Kochi', 9876543216, 'suresh@gmail.com'),
(108, 'Neha Das', 'Kolkata', 9876543217, 'neha@gmail.com');

-- listing value of customers 
select * from customers;
