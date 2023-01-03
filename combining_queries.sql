-- Combining queries with the UNION

/* The UNION operator combines the result sets from two or more SELECT statements into single result set.
    - To be able to use UNION;
        - The order and number of the columns in the select list of all queries must be the same.
        - The data types must be compitable too.
/* SELECT column1, column2
FROM table1
UNION
SELECT column1, column2
FROM table2 */

-- Lets use UNION on left_products and right_products
SELECT
    product_id, product_name
FROM left_products 
UNION 
    SELECT product_id, product_name
FROM right_products;

-- Do we get duplicates records when we used UNION?
INSERT INTO right_products (product_id, product_name) VALUES ('10', 'Pen');

-- what if we need duplicate records too

SELECT
    product_id, product_name
FROM left_products
UNION ALL
SELECT
    product_id, product_name
FROM right_products;

-- Lets combine directors and actors tables
SELECT
    first_name, last_name
FROM directors
UNION
SELECT
    first_name, last_name
FROM actors;

-- Can we use UNION with ORDER BY
SELECT
    first_name, last_name
FROM directors
UNION
SELECT
    first_name, last_name
FROM actors
ORDER BY first_name ASC;

SELECT
    first_name, last_name,
    'directors' AS "table_name"
FROM directors 
UNION
SELECT
    first_name, last_name,
    'actors' AS "table_name"
FROM actors
ORDER BY first_name ASC;

-- Can we UNION on data types which are not same?
-- NO
-- Lets combine all directors where nationality are America, Chinese and Japanese with all
-- female actors

SELECT
    first_name,
    last_name,
    'directors' AS "tablename"
FROM directors
WHERE nationality IN ('American', 'Chinese', 'Japanese')

UNION

SELECT
    first_name,
    last_name,
    'actors' AS "tablename"
FROM actors
WHERE gender = 'F';


-- Select the first name and last name of all directors and actors which are born after 1990.
SELECT
    first_name,
    last_name,
    date_of_birth,
    'directors' AS "tablename"
FROM directors
WHERE date_of_birth >= '1990-12-31'
UNION
SELECT
    first_name,
    last_name,
    date_of_birth,
    'actors' AS "tablename"
FROM actors
WHERE date_of_birth >= '1990-12-31'
ORDER BY date_of_birth ASC;

-- SELECT first_name, last_name of all directors and actors where their first_name starts with A
SELECT
    first_name,
    last_name,
    'directors' AS "tablename"
FROM directors
WHERE first_name LIKE 'A%'
UNION
SELECT
    first_name,
    last_name,
    'actors' AS "tablename"
FROM actors
WHERE first_name LIKE 'A%';

-- UNIONing tables with different number of columns

/* We have 
-- table1 with column: col1, col2
-- table2 with columns: col3
-- table1 with columns are different in table2

*/

CREATE TABLE table1 (
    col1 INT,
    col2 INT
);

CREATE TABLE table2 (
    col3 INT
);

-- Lest use union with NULL
SELECT col1, col2 FROM table1
UNION
SELECT NULL as col1, col3 FROM table2;


-- Combining queries with intersect

/*
-- The intersect operator returns any rows that are available in BOTH result sets
-- To be able to use INTERSECT;
    - The order and number of the columns in the select list of all queries must be the same
    - The data types must be compatible to
*/

SELECT
    product_id, product_name
FROM left_products
INTERSECT
SELECT
    product_id, product_name
FROM right_products;


-- Do we get duplicate records when we use intersect?
-- NO
-- Lets INTERSECT first_name, last_name of directors and actors tables
SELECT
    first_name,
    last_name
FROM directors
-- ORDER BY first_name
INTERSECT
SELECT
    first_name,
    last_name
FROM actors;
-- ORDER BY first_name;

-- The Except operator to return the rows in the first query that do NOT
-- appear in the output of the second query
-- Lets except on left_products and right_products
SELECT
product_id,
product_name
FROM left_products
EXCEPT
SELECT
product_id,
product_name
FROM right_products;

-- Lets EXCEPT first_name, last_name of directors and actors tables
SELECT
first_name,
last_name
FROM directors
EXCEPT
SELECT
first_name,
last_name
FROM actors;

-- list all the directors first_name, last_name unless they have the same first_name in the female actors
SELECT
first_name,
last_name
FROM directors
EXCEPT
SELECT
first_name,
last_name
FROM actors
WHERE gender = 'F';
