-- GROUP BY clause devides the rows returned from the select statement into groups
/*
SELECT column1
    AGGREGATE_FUNCTION(column2)
FROM tablename
GROUP BY column1
*/

-- AGGREGATE function is not a function, we are putting it as a reference
-- AGGREGATE functions are like SUM, COUNT, MIN, MAX etc.

-- GROUP BY eliminates duplicate values from the results, similor to DISTINCT

SELECT movie_lang, COUNT(movie_lang)
FROM movies
GROUP BY movie_lang;

SELECT movie_lang, AVG(movie_length) 
FROM movies
GROUP BY movie_lang;

SELECT age_certificate, SUM(movie_length)
FROM movies
GROUP BY age_certificate;

SELECT movie_lang,
MIN(movie_length),
MAX(movie_length)
FROM movies
GROUP BY movie_lang;


SELECT movie_lang
FROM movies
GROUP BY movie_lang;


SELECT movie_length
FROM movies
GROUP BY movie_length;

--  can we use column1, aggregate function column without specifying GROUP BY clause?
SELECT movie_lang,
MIN(movie_length),
MAX(movie_length)
FROM movies
GROUP BY movie_lang
ORDER BY MAX(movie_length) DESC;
-- You have to use it

-- using 1 more than one column in SELECT


SELECT movie_lang,
    age_certificate,
    AVG(movie_length) as "avg_movie_length"
FROM movies
GROUP BY movie_lang, age_certificate
ORDER BY movie_lang, avg_movie_length DESC;

-- Can we not use GROUP BY on all columns?
SELECT
    movie_lang,
    age_certificate,
    AVG(movie_length) as "avg movie length"
FROM
    movies
GROUP BY movie_lang, age_certificate
ORDER BY movie_lang, 3 DESC;


-- lets filter some records too

SELECT
    movie_lang,
    age_certificate,
    movie_length
FROM movies
WHERE movie_length > 100
GROUP BY movie_lang, age_certificate, movie_length
ORDER BY 3;


-- Get average movie length group by movie age certificate where age certificate = 10
SELECT
    age_certificate,
    AVG(movie_length)
FROM movies
WHERE age_certificate = 'PG'
GROUP BY age_certificate;

SELECT 
    nationality,
    COUNT(*)
FROM directors
GROUP BY nationality;

-- Get total sum movie length for each age certificate and movie language combination
SELECT
    movie_lang,
    age_certificate,
    SUM(movie_length)
FROM movies
GROUP BY age_certificate, movie_lang
ORDER BY 3 DESC;

-- Can we do GROUP BY on aggregate function column?
-- So how to filter records on aggregate functions. Solution is HAVING.
-- Order of execution in GROUP BY

-- PostgreSQL evaluates the GROUP BY clause after the FROM and WHERE clauses and before
-- the HAVING SELECT, DISTINCT, ORDER BY and LIMIT clauses.
/*
FROM
WHERE
GROUP BY
HAVING
SELECT 
DISTINCT
ORDER BY
LIMIT
*/
-- We Use Having Clause to speficy a search condition for a group or an aggregate 
-- The HAVING clause is often used with the GROUP BY clause to filter rows based on filter conditions
-- you cannot use column aliases in the HAVING clause, as HAVING clause is evaluated before the SELECT clause
-- HAVING clause calculates on aggregate function and not actual select columns

/*
SELECT
 column1,
 AGGREGATE_FUNCTION(column2)
FROM
    Table
GROUP BY column1
HAVING
    condition
*/


SELECT 
    movie_lang,
    SUM(movie_length)
FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 200
ORDER BY SUM(movie_length);


SELECT * FROM movies;

SELECT
    director_id,
    SUM(movie_length)
FROM movies
GROUP BY director_id
HAVING SUM(movie_length) > 200
ORDER BY 2 DESC;

-- HAVING VS WHERE
-- HAVING works on result group 
-- WHERE works on SELECT columns and not on result group

SELECT movie_lang,
    SUM(movie_length)
FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 200
ORDER BY 2 DESC;


SELECT movie_lang,
    SUM(movie_length)
FROM movies
WHERE movie_length > 100
GROUP BY movie_lang
ORDER BY 2 DESC;

CREATE TABLE employees_test (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(100),
    salary INT
);


INSERT INTO employees_test(employee_name, department, salary) VALUES
('John', 'Finance', 2500),
('Mary', NULL, 3000),
('ADAM', NULL, 3000),
('Bruce', 'Finance', 4000),
('Linda', 'IT', 5000),
('Megan', 'IT', 5000);

SELECT 
    employee_name,
    department,
    salary
FROM employees_test
ORDER BY department;

SELECT 
    department,
    COUNT(*)
FROM
    employees_test
GROUP BY department
ORDER BY department;


-- How to handle null values
-- COALESCE(source, '')
-- COALESCE(department, 'NO DEPARTMENT')

SELECT 
    COALESCE(department, 'NO DEPARTMENT') AS "department", 
    COUNT(*) as num_people
FROM 
    employees_test
GROUP BY 
    department
ORDER BY 
    department;

