/*
Questions- 1
            Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.


here i have to list the all the city name starting with vowels from the table 'CITY' .
conditions == result name cannot duplicated

query for the listing == */ 

              SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[AEIOUaeiou]';

-- no need to mention both capital and small later string to list.because SQL  is case insensitive 


