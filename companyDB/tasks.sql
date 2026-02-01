-- Tasks:

-- 1. Create the database and tables.
--     on schema file
-- 2. Insert at least 10 employee records and 5 department records.
--    on data file 
-- 3. Display all employees sorted by Salary DESC and top 5 highest paid employees.
      select * from employees order by salary desc limit 5;

-- 4. Increase salary by 5000 for employees with Experience > 5.
      update employees set salary=salary+5000 where experience>5;

-- 5. Delete employees with Experience < 1.
      delete from employees where experience<1;

-- 6. Use Single-row functions: display employee names in UPPER case and display first 3 characters of each name.
      select upper(name), substring(name,1,3) from employees;

-- 7. Use Group functions: find total employees, maximum and average salary.
      select count(*),max(salary), avg(salary) from employees;

-- 8. Use GROUP BY Department: count employees in each department.
      select department, count(*) from employees group by department;

-- 9. Use HAVING: display only departments having more than 2 employees.
      select department, count(*) from employees group by department having count(*)>2; 
