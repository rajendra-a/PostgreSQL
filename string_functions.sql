
SELECT UPPER('amazing postgresql');

SELECT INITCAP('The world is changing with a lightening  speed');


SELECT 
    UPPER(first_name) as first_name,
    UPPER(last_name) as last_name
FROM directiors;

SELECT LOWER('RAJENDRA');

SELECT LEFT('ABCD', 10);

SELECT LEFT('Akkala Rajendra', 1) as initial;


SELECT RIGHT('ABCD', 3);

SELECT RIGHT('ABCD', -2);

SELECT last_name, RIGHT(last_name, 2)
FROM directors
where RIGHT(last_name, 2) = 'on';


SELECT REVERSE('Amazing PostgreSQL');


-- SPLIT_PART() splits a string on a specified delimeter and returns the nth substring
-- SPLIT_PART(string, delimeter, position)
SELECT SPLIT_PART('1, 2, 3', ',', 2);
SELECT SPLIT_PART('ONE, TWO, THREE', ',', 2);

SELECT movie_name, release_date, 
SPLIT_PART(realse_date::text, '-', 1) as release_year
FROM movies;


-- TRIM() function removes the longest string that contains a specific character from a string
-- TRIM([LEADING | TRAILING | BOTH] [characters] FROM string);
SELECT 
    TRIM(
        LEADING
        FROM
        '  Amazing Postgresql'
    ),
    TRIM(
        TRAILING
        FROM
        'Amazing Postgresql  '
    ),
    TRIM(
        '  Amazing Postgresql  '
    );

-- removing say leading zero from number
SELECT 
    TRIM(
        LEADING '0'
        FROM
            CAST (000123456 AS TEXT)
    );

SELECT LTRIM('yummy', 'y');

SELECT RTRIM('yummy', 'y');

SELECT BTRIM('yummy', 'y');


-- LPAD, RPAD pads a string on the side to specified length with a sequence of characters
-- LPAD(string, length[, fill]) fill argument is optional, if you omit default value is space

SELECT LPAD('Database', 15, '*');
SELECT RPAD('Database', 15, '*');

SELECT LPAD('111', 6, 'A');

SELECT 
    mv.movie_name,
    r.revenues_domestic,
    LPAD('*', CAST(TRUNC(r.revenues_domestic /10) AS INT ), '*') chart
FROM movies mv
INNER JOIN movies_revenues r ON r.movie_id = mv.movie_id
ORDER BY 3 DESC
NULLS LAST;


-- LENGTH Function return the number of 

SELECT LENGTH('Amazing PostgreSQL');

SELECT LENGTH(CAST(102222 AS TEXT));

SELECT LENGTH('what is the length of the string');

SELECT char_length('');

SELECT char_length('  ');

SELECT char_length(NULL);

SELECT 
    first_name || ' ' || last_name AS full_name,
    LENGTH(first_name || ' ' || last_name) full_name_length
FROM 
    directors
ORDER BY
    2 DESC;


-- Position
-- returns the location of substring in a string

SELECT POSITION('Amazing' IN 'Amazing PostgreSQL');

SELECT POSITION('is' IN 'This is a computer');

SELECT POSITION('A' IN 'KlickAnalytics.com');

SELECT STRPOS('World Bank', 'Bank');

SELECT first_name, last_name
FROM directors
WHERE strpos(last_name, 'on') > 0;


-- STRPOS function 
-- STRPOS function used to find the position from where the substring is being matched within the string
-- What is the difference between position and strpos
-- Those functions are exactly samething and differ only in syntax. Documentation for strpos() says:
-- Location of specified substring (same as position(substring in string), But note the reversed argument order)



-- substring() function
-- functin allows you to extract a substring from a string
-- substring(string  [from start_position, length] [for length])
-- SUBSTRING(string, start_position, length)
-- The first position in string always start with 1.
SELECT substring('what a wonderful world' from 1 for 4);

SELECT substring('What a wonderful world' from 8 for 10);

SELECT substring('What a wonderful world' for 7);

SELECT 
    first_name,
    last_name,
    SUBSTRING(first_name, 1, 1) AS initial
FROM 
    directors
ORDER BY
    last_name;


--  REPEAT FUNCTION
--  repeat(string, number of times)
SELECT repeat('A', 10);

--  REPLACE
--  replace function replaces all occurences of a specified string
-- replace(string, from-substring, to_substring);
SELECT REPLACE('ABC XYZ', 'X', '1');

SELECT replace('what a wonderful world', 'a wonderful', 'an amazing');

SELECT replace('I like cats', 'cats', 'dogs');

SELECT replace('11122333','22', '44');

