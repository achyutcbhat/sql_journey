-- Tasks:

-- 1. Create the database and both tables with proper PRIMARY KEY.
      -- on schema file 

-- 2. Insert at least 8 records into each table.
--    on data file 

-- 3. Display all books sorted by Price (DESC) and display only Title and Author.
      select name,author from books order by price desc ;

-- 4. Update the price of all books in category 'CS' by adding 50.
      update books set price=price+50 where catagory='Military History';

-- 5. Delete all members from a particular city.
--     before deleting i did update on city 
      update member set city= 'Mumbai' where memberid= 101;
      update member set city= 'Mumbai' where memberid= 105;
      update member set city= 'Mumbai' where memberid= 107;
--    delete query:: 
      delete from member where city='Mumbai';

-- 6. Use Single-row functions: display all book titles in UPPER case and display length of each title.
      select upper(name),length(name) from books;

-- 7. Use Group functions: find total number of books, maximum, minimum, and average price.
      select count(*) ,max(price) ,min(price) ,avg(price) from books;

-- 8. Use GROUP BY: count number of books in each category.
      select catagory, count(*) from books group by catagory;

-- 9. Use HAVING: display only categories having more than 2 books.
      select catagory,COUNT(*) FROM books GROUP BY catagory HAVING COUNT(*) > 2;

