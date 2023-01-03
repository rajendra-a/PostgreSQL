SELECT COUNT(*) FROM movies;

SELECT COUNT(movie_length) FROM movies;

SELECT  COUNT(DISTINCT(movie_lang)) FROM movies;

SELECT DISTINCT(movie_lang) FROM movies;


SELECT COUNT(DISTINCT(director_id)) FROM movies;

SELECT COUNT(*) FROM  movies WHERE movie_lang = 'English';

SELECT COUNT(*) FROM movies WHERE movie_lang = 'Japanese';


--  SUM function 
-- SELECT SUM(coulmnname);

SELECT * FROM movies_revenues;

SELECT SUM(revenues_domestic) FROM movies_revenues;

SELECT SUM(revenues_domestic) FROM movies_revenues
WHERE revenues_domestic > 200;

SELECT SUM(movie_length) FROM movies WHERE movie_lang='English';

SELECT SUM(DISTINCT revenues_domestic)

FROM movies_revenues;


SELECT * FROM movies_revenues
ORDER BY revenues_domestic;

-- MAX, MIN

SELECT MIN(movie_length) FROM movies;

SELECT MAX(movie_length) FROM movies;


SELECT MAX(movie_length) FROM movies
WHERE movie_lang = 'English';

SELECT MAX(release_date)
FROM movies
WHERE movie_lang = 'English';

SELECT MIN(release_date) FROM movies
WHERE movie_lang='Chinese';



-- GREATEST and LEAST functions
SELECT GREATEST(200, 20, 30);

SELECT LEAST(10, 20, -10, 40);

-- The expressions must all convertible to a common data type, which will be the type of the result
-- can we compare int and varchar in a list?

SELECT GREATEST('A', 'B', 'C');

SELECT LEAST('A', 'B', 'C');

-- we can't use different data types in GREATEST OR LEAST FUNCTION

SELECT movie_id, revenues_domestic, revenues_international, GREATEST(revenues_domestic, revenues_international) as "greatest", LEAST(revenues_domestic, revenues_international) as "smallest"
FROM movies_revenues;

--  AVG() function 
--  Calculates average value on a set, return one value
-- SELECT AVG() FROM tablename

SELECT AVG(movie_length) FROM movies;

SELECT AVG(movie_length) FROM movies WHERE movie_lang='English';

SELECT AVG(DISTINCT(movie_length)) FROM movies WHERE movie_lang='English';

SELECT AVG(movie_length), SUM(movie_length) FROM movies WHERE movie_lang='English';

-- How avg() handle NULL values 

CREATE TABLE demo_avg
(
num INT
);

INSERT INTO demo_avg(num) VALUES (1), (2), (3), (NULL);

-- AVG() ignores the all the NULL values
SELECT AVG(num) FROM demo_avg;

DROP TABLE demo_avg;

-- Combine columns using Mathematical operators
-- Addition
-- Subtraction
-- Division
-- Multiplication
-- Modulus/Reminder

-- Lets practice above

SELECT 2+10 AS addition;
SELECT 2-10 AS sub;

SELECT 11/2::numeric(10,2) as divide;

SELECT 11/2;

SELECT 2.56*10.23;

SELECT 14%2;

SELECT * FROM movies_revenues;

SELECT 
    movie_id,
    revenues_domestic,
    revenues_international,
    (revenues_domestic + revenues_international) AS "total_revenue"
FROM movies_revenues;

SELECT 
    movie_id,
    revenues_domestic,
    revenues_international,
    (revenues_domestic + revenues_international) AS "total_revenue"
FROM movies_revenues
ORDER BY total_revenue DESC
NULLS LAST;

SELECT 
    movie_id,
    revenues_domestic,
    revenues_international,
    (revenues_domestic + revenues_international) AS "total_revenue"
FROM movies_revenues
WHERE (revenues_domestic + revenues_international) IS NOT NULL
ORDER BY total_revenue DESC
NULLS LAST;
