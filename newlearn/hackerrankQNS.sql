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

/* 
01/02/2026
Questions --05 
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates. 

this is common like query. we have to find the words which not end with vowel. 
*/
            SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[^AEIOU]$';

/* 
MAIN SYNTAX CHANGE IS  '[^AEIOU]$'; 
                        HERE $ list the end from. 
*/


/* 
Qyestion -- 06 
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. 

here is main thing which we have to  understand. they asking the words either start from or end with vowel should not display'
so the QUERY :
*/
            SELECT DISTINCT CITY FROM STATION WHERE NOT(CITY REGEXP '^[AEIOU]' AND CITY REGEXP '[AEIOU]$');

/* 
            QUERY EXPLANATION :- 
            
            SELECT → fetch data
            DISTINCT → remove duplicate city names
            CITY → column to display
            Data is taken from the STATION table 
            WHERE NOT(CITY REGEXP '^[AEIOU]' AND CITY REGEXP '[AEIOU]$'); -- here is the main logic. 
                        == it will remove the both which start and end with vowels and give the not vowel start or end with words. 
*/
/* 
questions--  07
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name.
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/ 
            SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3), ID ASC;

/*  code explanation == 
             SELECT NAME : shows only the student names
             FROM STUDENTS : takes data from the STUDENTS table
             WHERE MARKS > 75 : selects only students who scored more than 75 marks
             ORDER BY : is used to arrange (sort) the result
             RIGHT(NAME, 3) : takes the last 3 letters of each name and sorts by them
             , ID ASC : if two names end with the same 3 letters, the student with smaller ID comes first
*/ 

/* 
03/02/2026 
Questions -- 08 
            Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Query for this code is 
*/ 
            SELECT sum(city.population) from city inner join country on city.countrycode = country.code where continent = 'Asia';

/* here i gone a learn new thing that 'sum' . before i use the count for this , but it show error. than i got to know about sum .
sum will  add the all attribute value and giveback. 
COUNT(*) only counts number of rows (cities),
it does NOT add population values.  

Function	What it does
COUNT(*)	Counts rows
SUM(col)	Adds numeric values
AVG(col)	Finds average

*/ 

/* 
Questions -- 09 
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns. 

i was learned a interesting query here 
*/
            select country.continent,floor(avg(city.population)) from city inner join country on city.countrycode= country.code group by continent;  

/*  here the main things we have to select the continent name and average of the its city population which will rounded to nearest value 
here we can't use round() becuase it can go up or down, like 
                        value     round(3.99, 1) 
                        3.99             3.9 

so we will use floor() which is It rounds a number DOWN to the nearest whole number. like   value   floor() 
                                                                                             3.99      3 

*/ 
/* 25/02/2026 
QNS -- 
Consider P1(a,b) and p2(c,d)  to be two points on a 2D plane.

 a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points p1 and p2  and round it to a scale of 4 decimal places
*/ 
SELECT ROUND ((MAX(LAT_N)-MIN(LAT_N)) + (MAX(LONG_W)-MIN(LONG_W)), 4) FROM STATION; 


/* 26/02/2026
QNS -- 
Consider p1(a,b) and p2(c,d) to be two points on a 2D plane
where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION. 
Query the Euclidean Distance between points p1 and p2 and format your answer to display 4 decimal digits. 
*/ 
SELECT round( (sqrt(((MAX(LAT_N)-MIN(LAT_N))*(MAX(LAT_N)-MIN(LAT_N)))+((max(LONG_W)-MIN(LONG_W))*(max(LONG_W)-MIN(LONG_W))))),4) FROM STATION ; 

/* 1/03/2026
QNS -- 
A median is defined as a number separating the higher half of a data set from the lower half. 
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
*/
SELECT ROUND(LAT_N, 4)
FROM (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
           COUNT(*) OVER () AS total_rows
    FROM STATION
) AS temp
WHERE row_num = FLOOR((total_rows + 1) / 2);








