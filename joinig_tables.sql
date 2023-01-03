-- SQL jons used to combine columns from one or more tables based on the values of the
-- common columns between the tables 
-- These common columns generally 
-- PRIMARY KEY columns of first table and FOREIGN KEY columns of the second table

/* 
SELECT * FROM table_a
JOIN table_b
ON table_a.key_column = table_b.foriegn_key_column
*/
/*
SELECT table1.column1
        table2.column2
FROM table1
inner JOIN table2 ON table1.column1 = table2.column2*/

-- let combeine movies and directors
SELECT *
FROM movies
ORDER BY director_id;

SELECT * FROM 
directors;

SELECT
    movies.movie_id, movies.movie_name, movies.director_id, directors.first_name
FROM movies
INNER JOIN directors
ON movies.director_id = directors.director_id;


-- using table aliases
SELECT
    mv.movie_id, mv.movie_name, mv.director_id, dr.first_name
FROM movies mv
INNER JOIN directors dr
ON mv.director_id = dr.director_id;

-- lets filer some records here
SELECT
    mv.movie_id, mv.movie_name, mv.director_id, mv.movie_lang, dr.first_name
FROM movies mv
INNER JOIN directors dr
ON mv.director_id = dr.director_id
WHERE mv.movie_lang = 'English' AND dr.director_id = 3;

-- joins using USING keyword
SELECT * FROM movies INNER JOIN directors USING (director_id);

SELECT * FROM movies INNER JOIN directors ON movies.director_id = directors.director_id;

-- connect movies and movies_revenues
-- lets check common column here is movie_id
SELECT * FROM movies
INNER JOIN movies_revenues USING (movie_id);


-- can we connect more than two tables
-- connect movies, directors and movies_revenues

SELECT * FROM movies
INNER JOIN directors USING (director_id)
INNER JOIN movies_revenues USING (movie_id);

-- select movie name, director name, domestic revenues for all japanese movies
SELECT  mv.movie_name, d.first_name, mr.revenues_domestic
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues mr ON mv.movie_id = mr.movie_id
WHERE mv.movie_lang = 'Japanese';


SELECT mv.movie_name, d.first_name, mr.revenues_domestic FROM
movies mv INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues mr ON mv.movie_id = mr.movie_id
WHERE mv.movie_lang IN ('English','Japanese', 'Chinese') AND mr.revenues_domestic > 100;



SELECT 
mv.movie_name,
mv.movie_lang,
(d.first_name ||' '|| d.last_name) AS "Director Name",
(mr.revenues_domestic + mr.revenues_international) as "Total_revenues"
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues mr ON mv.movie_id = mr.movie_id
ORDER BY 4 DESC NULLS LAST
LIMIT 5;


SELECT 
mv.movie_name,
mv.movie_lang,
(d.first_name ||' '|| d.last_name) AS "Director Name",
(mr.revenues_domestic + mr.revenues_international) as "Total_revenues"
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues mr ON mv.movie_id = mr.movie_id
WHERE mv.release_date  BETWEEN  '2005-01-01' AND '2010-01-01'
ORDER BY 4 DESC NULLS LAST
LIMIT 10;


-- INNER JOIN with two tables with different columns data type

CREATE TABLE t1 (test INT);

CREATE TABLE t2 (test VARCHAR(10));

SELECT * FROM t1 INNER JOIN t2 ON t1.test = CAST(t2.test AS INT);

SELECT * FROM t1 INNER JOIN t2 ON CAST(t1.test AS VARCHAR) = t2.test; 

-- LEFT JOIN 
/* returns every row from the left table plus rows that match values in the joined
column from the right table.
When a left table row doesn't have a match in the right table, The result shows no values
from the right TABLE


SELECT
    table1.column1,
    table2.column1
FROM table1
LEFT JOIN table2 ON table1.column1 = table2.column2
*/

CREATE TABLE left_products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100)
);

CREATE TABLE right_products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100)
);


INSERT INTO left_products (product_id, product_name) VALUES
(1, 'Computers'),
(2, 'Laptopa'),
(3, 'Monitors'),
(5, 'Mics');

INSERT INTO right_products (product_id, product_name) VALUES
(1, 'Computers'),
(2, 'Laptopa'),
(3,  'Monitors'),
(4, 'Pen'),
(7, 'Papers');


SELECT *
FROM left_products
LEFT JOIN right_products ON left_products.product_id = right_products.product_id;



SELECT 
(d.first_name||' '||d.last_name) AS "director_name",
mv.movie_name
FROM directors d LEFT JOIN movies mv ON d.director_id = mv.director_id;


-- lets reverse the table what is the impact on result will check

SELECT
(d.first_name || ' ' || d.last_name) AS "director_name",
mv.movie_name

FROM movies mv LEFT JOIN directors d ON d.director_id = mv.director_id;


-- get all directors and movie name which is made from English and chinese lang

SELECT
CONCAT(d.first_name,' ', last_name) AS "director_name",
mv.movie_name,
mv.movie_lang
FROM directors d
LEFT JOIN movies mv ON mv.director_id = d.director_id
WHERE mv.movie_lang IN ('English', 'Chinese');

-- get the nnumber of movies done for each director
SELECT
CONCAT(d.first_name, ' ', d.last_name) AS "director_name",
COUNT(movie_name)
FROM directors d LEFT JOIN movies mv ON d.director_id = mv.director_id
GROUP BY 1
ORDER BY 2 DESC;


--  Get all the movies that done by directors whose nationality is American, Chinese, Japanese
SELECT 
*
FROM directors d LEFT JOIN movies mv ON d.director_id = mv.director_id
WHERE d.nationality IN ('American', 'Chinese', 'Japanese');


-- get all the total revenues earned from movies for each directors
SELECT 
(d.first_name || ' '  || d.last_name) AS director_name,
SUM(revenues_domestic + revenues_international) AS "revenues_total"
FROM directors d 
LEFT JOIN movies mv ON mv.director_id = d.director_id
LEFT JOIN movies_revenues mr ON mv.movie_id = mr.movie_id
GROUP BY 1
HAVING SUM(mr.revenues_domestic + mr.revenues_international) > 100
ORDER BY 2 DESC NULLS LAST;

-- RIGHT JOIN
-- Returns every row from the RIGHT table plus rows that match values in joined column from the left table

/*
SELECT 
    table1.column1,
    table2.column1
    FROM table1
    RIGHT JOIn table2 ON table1.column1 = table2.column2
*/


SELECT * 
FROM left_products RIGHT JOIN right_products ON left_products.product_id = right_products.product_id;

-- list all the movies with directors first_name and last_name and movie_name
SELECT 
d.first_name,
d.last_name,
mv.movie_name
FROM directors d
RIGHT JOIN movies mv ON d.director_id = mv.director_id
ORDER BY d.first_name;

-- Lets reverse the tables directors and movies 



SELECT 
d.first_name,
d.last_name,
mv.movie_name
FROM movies mv
RIGHT JOIN directors d ON mv.director_id = d.director_id
ORDER BY d.first_name;


-- Can we add a WHERE conditions, say get list of english and chinese movies only

SELECT
d.first_name,
d.last_name,
mv.movie_name
FROM directors d
RIGHT JOIN movies mv ON d.director_id = mv.director_id
WHERE mv.movie_lang IN ('Chinese', 'English');

-- Count all movies for each director

SELECT
d.first_name,
d.last_name,
COUNT(*) AS "Total movies"
FROM directors d
RIGHT JOIN movies mv ON d.director_id = mv.director_id
GROUP BY d.first_name, d.last_name
ORDER BY 3 DESC, d.first_name;

-- Get all the total revenues done by each films for each directors
SELECT
d.first_name,
d.last_name,
SUM(mr.revenues_domestic + mr.revenues_international) AS "total_revenues"
FROM directors d
RIGHT JOIN movies mv ON mv.director_id = d.director_id
LEFT JOIN movies_revenues mr ON mr.movie_id = mv.movie_id
GROUP BY d.first_name, d.last_name
HAVING SUM(mr.revenues_domestic + mr.revenues_international) > 100
ORDER BY 3 DESC NULLS LAST, d.first_name;


-- FULL JOIN
-- Returns all the data from table1, and table2
-- 1.Lets join left_products and right_products via FULL JOIN
SELECT * FROM left_products
FULL JOIN right_products ON left_products.product_id = right_products.product_id;


-- list all movies with directors first_name, last_name, and movie name
SELECT
d.first_name,
d.last_name,
mv.movie_name
FROM directors d FULL JOIN movies mv On d.director_id = mv.director_id;


-- JOIN multiple tables


/*
SELECT
    table1.column,
    table2.column,
    table3.column
FROM table1
JOIN table2 ON table1.column = table2.column
JOIN table3 ON table3.column = table3.column
*/

-- lets join movies, directors,  and movies revenues tables
SELECT 
* FROM movies mv
JOIN directors d ON d.director_id = mv.director_id
JOIN movies_revenues mr ON mr.movie_id = mv.movie_id;


-- Do the order of the tables joining matters?
SELECT *
FROM directors d
JOIN movies mv ON d.director_id = mv.director_id
JOIN movies_revenues mr ON mv.movie_id = mr.movie_id;

-- lets join movies actors , directors, movies and revenues together
SELECT 
* 
FROM actors ac 
JOIN movies_actors ma ON ma.actor_id = ac.actor_id
JOIN movies mv ON mv.movie_id = ma.movie_id
JOIN directors d ON d.director_id = mv.director_id
JOIN movies_revenues mr ON mr.movie_id = mv.movie_id;


-- Is JOIN and INNER JOIN are same?
SELECT 
* 
FROM actors ac 
INNER JOIN movies_actors ma ON ma.actor_id = ac.actor_id
INNER JOIN movies mv ON mv.movie_id = ma.movie_id
INNER JOIN directors d ON d.director_id = mv.director_id
INNER JOIN movies_revenues mr ON mr.movie_id = mv.movie_id;

-- JOIN  = INNER JOIN
-- INNER JOIN is default if you don't specify the type when you use the word JOIN

-- slef join allows you to compare rows within the same table.
-- NORMAL use case for self join is to
--  query the heirarchical data or
--  to compare rows within the same table
SELECT * FROM left_products t1
INNER JOIN left_products t2 on t1.product_id = t2.product_id;

-- Lets self join directors TABLE

SELECT
* FROM directors d1
INNER JOIN directors d2 ON d1.director_id = d2.director_id;

-- Lets self join finds all pair of movies that have the same movie length

SELECT 
t1.movie_name,
t2.movie_name,
t1.movie_length

FROM movies t1
INNER JOIN movies t2 ON t1.movie_length = t2.movie_length 
AND t1.movie_name <> t2.movie_name
ORDER BY t1.movie_length DESC;


--  Lets do heirarchical data like all directors and movies
SELECT 
* FROM movies
ORDER BY director_id;

SELECT 
t1.movie_name, 
t2.director_id

FROM movies t1
INNER JOIN movies t2 ON t1.director_id = t2.movie_id
ORDER BY t2.director_id, t1.movie_name;


-- CORSS JOIN
-- In CROSS JOIN query, the result lines up each row in the left table
-- each row in the right table to present all possible combinations of rows
SELECT 
* FROM left_products
CROSS JOIN right_products;

-- Do we have an equivalent of CROSS JOIN?
-- yes

SELECT
* FROM left_products, right_products;


SELECT 
* FROM left_products
INNER JOIN right_products ON true;

-- Lets cross join actors and directors table



SELECT * FROM actors;

SELECT * FROM directors;



SELECT
* FROM actors
CROSS JOIN directors;

-- NATURAL  JOIN
-- A Natural join is a join that creates an implicit join based on the same column names in the joined tables.
-- A  natural join can be an inner join, left join, or right join.
-- If you do not specify a join explicitly, then PostgreSQL will use the INNER JOIN by default.

/* SELECT 
column_list, 
FROM table1
NATURAL [INNER, LEFT, RIGHT] JOIN table2;

Lets Natuaral join left_products and right_products tables
what if you use (*)  for column list
*/
SELECT
* FROM left_products
NATURAL JOIN right_products;

SELECT 
* FROM left_products
INNER JOIN right_products USING (product_id);

-- Why we have empty records?
-- Becuase we have 2 SAME columns? country_id and add_date

-- Lets natural join movies and directors tables
SELECT
* FROM movies
NATURAL JOIN directors;

-- common column between movies and directors tables is 'director_id'

SELECT * FROM movies
NATURAL RIGHT JOIN directors; -- The RIGHT TABLE is directors, which contains 'James David' with no movies
-- common columns between movies and directors tables is 'director_id'

-- Append tables with different columns
-- we have 
-- * table1 with columns : add_date, column1, column2, column3
-- * table2 with columns : add_date, column1, column2, column3, column4, column5
-- We want to combine the two tables, , but making sure to take the data from the FIRST TABLE table1
-- 1. Lets create the tables
CREATE TABLE table1 (
    add_date DATE,
    col1 INT,
    col2 INT,
    col3 INT,
    col4 INT,
    col5 INT
);


CREATE TABLE table2 (
    add_date DATE,
    col1 INT,
    col2 INT,
    col3 INT,
    col4 INT,
    col5 INT
);

INSERT INTO table1(add_date, col1, col2, col3) VALUES ('2020-01-01', 1, 2, 3), ('2020-01-02', 4, 5, 2);

INSERT INTO table2(add_date, col1, col2, col3, col4, col5) VALUES ('2020-01-01', NULL, 7, 8, 9, 10),
('2020-01-02', 11, 12, 13, 14, 15),
('2020-01-03', 16, 17, 18, 19, 20);

SELECT * FROM table1;

SELECT 
    COALESCE(t1.add_date, t2.add_date) AS "add_date",
    COALESCE(t1.col1, t2.col1) AS col1,
    COALESCE(t1.col2, t2.col2) AS col2,
    COALESCE(t1.col3, t2.col3) AS col3,
    t2.col4,
    t2.col5
FROM table1 t1 FULL JOIN table2 t2 ON t1.add_date = t2.add_date;
