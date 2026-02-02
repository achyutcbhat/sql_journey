-- 1. Create database and tables with PRIMARY KEY.
      -- on schema file

-- 2. Insert at least 10 records into each table.
--    on data file 

-- 3. Display all patients whose Age > 40 and top 3 patients with highest bill.
      select * from patients where age>40 order by billamount desc; 

-- 4. Increase bill by 10% for patients with Disease = 'Surgery'.
      update patients set billamount= billamount*1.10 where disease='Surgery';

-- 5. Delete all patients whose bill is less than 1000.
      delete from patients where billamount<1000;

-- 6. Use Single-row functions: display patient names in LOWER case and display length of each patient name.
      select lower(name),length(name) from patients;

-- 7. Use Group functions: find total number of patients, maximum and average bill.
      select count(*) ,max(billamount) ,min(billamount) ,avg(billamount) from patients;

-- 8. Use GROUP BY Disease: find average bill for each disease.
      select disease, avg(billamount) from patients group by disease;

-- 9. Use HAVING: display only diseases whose average bill > 5000
      select disease, avg(billamount) from patients group by disease having avg(billamount)>5000;
