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

/* 
Question- 03 
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

this questions is more better than last  two questions. we have to findout the city name which start and end with vowels.
for that we have to do little change is 
*/
            SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP  '^[aeiou].*[aeiou]$';

/*  here  REGEXP  '^[aeiou].*[aeiou]$'; 
            ^ → start
            $ → end
            .* → anything in between 
this is the meaning of this symbols in query 
*/ 

/* 
Question -- 04 
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

this QNS saying that that we have to find the city which do not start with vowel. for that query is 
*/
            SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[^AEIOU]';

/* CODE explanation 
            SELECT -- it will select 
            DISTINCT -- remove the duplicate 
            CITY -- the name or list we have to find 
            STATION -- from station named table 
            REGEXP -- match the pattern 
            ^ -- start from 
            [^]--  ^ on the [] is  work as except or called NOT. or can understand as whichever the the character in the [], inner ^ will not going show or except that characters it will shows the answe.  
*/


