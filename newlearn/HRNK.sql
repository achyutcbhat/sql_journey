/*
30/01/2026 
Questions- 1
            Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.


here i have to list the all the city name starting with vowels from the table 'CITY' .
conditions == result name cannot duplicated

query for the listing == */ 

              SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[AEIOUaeiou]';

-- no need to mention both capital and small later string to list.because SQL  is case insensitive 

/* 
31/01/2026
Question- 2 
            Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

This question is same like a Q1, but we have to find the words ends with vowels. but the query is little bit different 
*/
            SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[AEIOUaeiou]$';

/* HERE you can see the difference bitween the two questions.
for find the word start with, you should use  REGEXP '^[character you want]'; but same to find the word end with, you will  going to use $ instead of ^ at the end 
like REGEXP '[character you want]$'; 
*/



