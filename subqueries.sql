-- A subquery is allows you to construct a complex query.
-- A subquery is nested inside another query 
-- Typically, it's used for a calculation or logical test that provides a value or set of data to passed
-- into the main portion of query
-- The syntax is pretty simple. we just enclose the subquery in () paranthesis and use it where needed.
-- Subqueries can nested inside a SELECT, INSERT, UPDATE, or DELETE
-- Can also be used after FROM or WHERE
/* Syntax 
Outer query
    (inner query)
SELECT 
    column_list
FROM table_name
WHERE
(
    SELECT 
        column list
    from table_name
    );

-- Filtering with subqueries in a WHERE clause
-- 1.Lets take a scenario 
-- a. Find the movies average movie length and then
-- b. Use the results from the first query and then used SELECT to find movies which are more than average movie LENGTH
*/
SELECT 
    AVG(movie_length) 
FROM movies;


SELECT 
    movie_name,
    movie_length
FROM movies
WHERE
    movie_length > 
    (
    SELECT 
             AVG(movie_length) 
    FROM movies
    WHERE movie_lang = 'English'
    
    ) 
ORDER BY movie_length DESC;


-- Get first name and last name of all actors who are younger than Douglas Silva
-- Always start with inner query

SELECT
 first_name,
 last_name,
 date_of_birth
FROM actors
WHERE date_of_birth >
(
SELECT 
    date_of_birth
FROM actors
WHERE first_name = 'Douglas'
);


-- subquery with IN operator
SELECT 
    movie_name,
    movie_lang
FROM movies
WHERE 
    movie_id IN
(
SELECT movie_id
FROM movies_revenues
WHERE 
    revenues_domestic > 200
);

-- Find all movies where domestic revenues are higher than the international revenues

SELECT 
    movie_id,
    movie_name
FROM movies

WHERE movie_id IN
(
SELECT movie_id
FROM movies_revenues
WHERE revenues_domestic > revenues_international
);


-- subqueries with joins
-- List all the directors where their movies made more than the average total revenues of all english movies
-- Lets understand outer and inner query
-- outer query: list all directors
-- inner query: movies made more than the average total revenues of all english movies
-- Always start with inner query
SELECT 
d.director_id,
m.movie_name,
SUM(mr.revenues_domestic + mr.revenues_international) AS "total_revenues"
FROM movies m 
INNER JOIN directors d ON m.director_id = d.director_id
INNER JOIN movies_revenues mr ON mr.movie_id = m.movie_id
WHERE mr.revenues_domestic + mr.revenues_international > (
SELECT 
AVG(revenues_domestic + revenues_international) AS "avg_total_revenues"
FROM movies_revenues)
GROUP BY d.director_id, m.movie_name
ORDER BY 2 DESC, 1 ASC;


SELECT 
    d.director_id,
    SUM(COALESCE(mr.revenues_domestic, 0) + 
    COALESCE(mr.revenues_international, 0)) AS "total_revenues"
    FROM directors d
    INNER JOIN movies mv ON mv.director_id = d.director_id
    INNER JOIN movies_revenues mr ON mr.movie_id = mv.movie_id
    WHERE COALESCE(mr.revenues_domestic, 0) + COALESCE(revenues_international, 0) >
    ( 
        SELECT AVG(COALESCE(mr.revenues_domestic, 0) + COALESCE(mr.revenues_international)) AS "avg_total_revenues"
        FROM movies_revenues mr
        INNER JOIN movies mv ON mv.movie_id = mr.movie_id
        WHERE mv.movie_lang = 'English'
    )

    GROUP BY d.director_id
    ORDER BY 2 DESC, 1 ASC;

-- Order entries in a UNION without ORDER BY?
SELECT first_name, 0 myorder, 'actors' as "tablename" FROM actors
UNION
SELECT first_name, 1, 'directors' as "tablename" FROM directors
ORDER BY myorder;

-- subquery with an alias
SELECT *
FROM 
(
    SELECT
    *
    FROM movies
) t ;

--  we will use subquery alias with joins and more.

-- A SELECT without a FROM
SELECT
(
    SELECT MAX(revenues_domestic) FROM movies_revenues  
);



SELECT
(
    SELECT MAX(revenues_domestic) FROM movies_revenues  
)/
(
    SELECT MIN(revenues_international) FROM movies_revenues
);

SELECT
(
    SELECT MAX(revenues_domestic) FROM movies_revenues  
),
(
    SELECT MIN(revenues_international) FROM movies_revenues
);

-- Correlated queries
-- A correlated subquery is a subquery that contains a reference to a table that also appears in the
-- outer query
-- List movie name, movie language and movie age certificate for all movies with an above minimum length of 
-- for each age certificate
-- Parent query: List movie name, movie language, movie age certification

SELECT
mv1.movie_name,
mv1.movie_lang,
mv1.movie_length,
mv1.age_certificate
FROM movies mv1
WHERE mv1.movie_length > 
(
    SELECT 
        MIN(movie_length)
    FROM movies mv2
    WHERE mv2.age_certificate = mv1.age_certificate
)
ORDER BY mv1.movie_length ASC;

-- List first_name, last_name and date_of_birth for the oldest actors for each gender

SELECT 
    ac1.first_name,
    ac1.last_name,
    ac1.date_of_birth,
    ac1.gender
FROM actors ac1
WHERE 
    ac1.date_of_birth >
(
    SELECT
    MIN(date_of_birth)
    FROM actors ac2
    WHERE ac1.gender = ac2.gender
)
ORDER BY ac1.date_of_birth;

-- Using IN with subquery
SELECT column_list
FROM table_name 
WHERE 
    column_name in (SELECT statement);


-- Find suppliers that are same countries as customers
SELECT * FROM customers WHERE country = 'UK';
SELECT * FROM suppliers WHERE country = 'UK';
SELECT
 * FROM suppliers
WHERE country IN
(
    SELECT country FROM customers

);

-- Find customers that are same city as suppliers
SELECT
* FROM customers
WHERE 
    city IN (SELECT city FROM customers);

-- Using any with subquery
SELECT column_list
FROM tablename
WHERE 
    columnname operator_expression ANY (SELECT statement)
-- Operator expression
=, !=, >, >=, <, <=
-- Logically IN is equivalent to ANY
-- The ANY construct is far more versatile, as it can be combined with various operators,not just =.
-- Find customers details where they ordered more than 20 items in a single order
SELECT * FROM customers
WHERE customer_id = ANY
(SELECT
customer_id FROM orders
INNER JOIN order_details ON order_details.order_id = orders.order_id
WHERE quntity> 20
);

-- Using ALL with subquery
-- With ANY, any rows with the filter criterial (columnname, operator_expression) are selected
-- with ALL, all rows returning from subquery must be equal to filter criterial (columnname, operator_expression)

-- Find all products where their order amount were lower than the average amount of all the products

SELECT
* FROM products
INNER JOIN order_details ON order_details.product_id = products.product_id
WHERE
    ((order_details.unit_price*order_details.quantity)-order_details.discount) < ALL
    (
        SELECT 
            product_id,
            AVG((unit_price* ) - discount)

        FROM order_details
        GROUP BY product_id
    );


-- Subquery with EXISTS
/*
SELECT colulmn_list,
FROM tablename
WHERE EXISTS (SELECT column_name FROM tablename WHERE conditions)
*/
SELECT 
* FROM suppliers
WHERE EXISTS (
    SELECT
    * FROM products
    WHERE
        unit_price < 100 -- ORDER BY unit_price DESC
    AND products.supplier_id = suppliers.supplier_id
);
