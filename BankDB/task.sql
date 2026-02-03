-- Tasks:
--1. Create database and tables.
--  on schema file

-- 2. Insert at least 10 accounts and 6 loan records.
    -- on data file 

-- 3. Display all accounts ordered by Balance DESC and top 3 richest customers.
      select * from account order by balance desc limit 3;

-- 4. Add 1000 bonus to accounts whose Balance > 50000.
    update account set balance= balance+1000 where balance>50000;

-- 5. Delete accounts whose Balance < 1000.
      delete from account where balance<1000;

-- 6. Use Single-row functions: display customer names in UPPER case and display current date.
      select upper(name),current_date from account;

-- 7. Use Group functions: find total number of accounts, maximum and average balance.
      select count(*),max(balance),avg(balance) from account;

-- 8. Use GROUP BY Branch: count customers in each branch.
      select branch, count(*) from account group by branch;

-- 9.Use HAVING: display only branches having more than 2 customers
    select branch, count(*) from account group by branch having count(*)>2;

