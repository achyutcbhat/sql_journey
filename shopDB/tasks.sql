-- TASKS 

-- 1. Create the database and tables.
--    on schema file 
-- 2. Insert at least 10 products and 8 customers.
-- on data file 

-- 3. Display all products sorted by Price and only ProductName and Category.
      select productname, catagory ,price from product order by price;

-- 4. Reduce price by 10% for Category = 'Electronics'.
      update product set price=price*0.90 where catagory='Electronics';

-- 5. Delete products whose Stock = 0.
      delete from product where stock=0;

-- 6. Use Single-row functions: display product names in LOWER case and display length of each product name.
      select  lower(productname), length(productname) from product;

--7. Use Group functions: find total number of products, maximum and average price.
      select count(*), max(price),min(price),avg(price) from product;

-- 8. Use GROUP BY Category: find average price in each category.
      select count(*), avg(price) from product group by catagory;

-- 9. Use HAVING: display only categories whose average price > 2000
      select count(*), avg(price) from product group by catagory having avg(price)> 2000;
