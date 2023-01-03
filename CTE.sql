-- Common Table Expressions (CTEs)
-- 1. CTE is a temporary result taken from SQL STATEMENT
-- 2. A second approach to create temporary tables for query data instead of using subqueries in
-- a from clause
-- SELECT * FROM 
-- (sub
    -- ) = CTE
-- A good alternative of subqueries
-- Using the CTE, you can define one or more tables upfront with subqueries
-- CTE1 - table1
-- CTE2 - table2
-- CTE3 - table3

-- Unlike subqueries, CTEs can be reference multiple times in multiple places in query STATEMENT
-- CTEs can be used to improve readability and interpretability of the code
-- CTEs are non recursive type by DEFAULT
-- The life time of a CTE is equal to the lifetime of the query
-- FROM PostgreSQL version 12, things have changed, and two new options have been introduced for the execution
-- of a CTE, namely, Materialized, not materialized
-- CTEs are normally used to simplyfy complex joins and subqueries
-- Ability to create recursive queries
-- Use in conjunction with window functions e.g RANK()
-- Syntax
/*
WITH cte_name (column list) AS (
    CTE_query_definition
)
statement
*/
-- The statement can contains SELECT, INSERT, UPDATE, or DELETE
-- Lets create a  number series from 1 to 10
WITH num as (
   SELECT * FROM generate_series(1,10) AS id
)
-- upfront data
SELECT * FROM num;
-- List all movies by director_id\
WITH cte_director_1 AS
(
    SELECT * 
    FROM movies mv
    INNER JOIN directors d ON d.director_id = mv.director_id
    WHERE d.director_id = 1
)

SELECT * FROM cte_director_1;

-- Lets view all long movies where long movies are 120 hours
WITH cte_long_movies AS
(
    -- < 100  short
    -- < 120 medium
    -- > 120 long
    SELECT movie_name, movie_length,
    (
    CASE
        WHEN movie_length > 100 THEN 'Short'
        WHEN movie_length > 120 THEN 'Medium'
        ELSE 'Long'
    END
    ) AS m_length
    FROM movies

)
SELECT * FROM cte_long_movies  
WHERE m_length = 'Long' ;


-- Combine CTE with table
-- Lets calculate total revenues for each directors
WITH cte_movie_count AS (

    SELECT
        d.director_id,
        SUM(revenues_domestic + revenues_international) as total_revenues
    FROM directors d 
    INNER JOIN movies mv ON mv.director_id = d.director_id
    INNER JOIN movies_revenues mr ON mr.movie_id = mv.movie_id
    GROUP BY d.director_id
)

SELECT
d.director_id,
d.first_name,
d.last_name,
cte.total_revenues
FROM cte_movie_count cte
INNER JOIN directors d ON d.director_id = cte.director_id;

-- Simultaneous DELETE, INSERT via CTE 
-- lets take scenario, we have:
/*
    articles                  main articles
    articles_delete           all the articles athat are deleted
    we want to delete some rows in articles table, and
    we want all the records that we have deleted from the articles table 
    to be inserted into articles_deleted table 
*/

CREATE TABLE articles (
    article_id SERIAL PRIMARY KEY,
    title VARCHAR(100)
);


CREATE TABLE articles_deleted AS SELECT * FROM articles limit 0; --creating table with same schema as articles table


INSERT INTO articles (title) VALUES
('ARTICLE1'),
('ARTICLE2'),
('ARTICLE3'), 
('ARTICLE4');


SELECT * FROM articles;
SELECT * FROM articles_deleted;

WITH cte_delete_articles AS
(
    DELETE FROM articles
    WHERE article_id  = 1
    RETURNING * 
)
INSERT INTO articles_deleted
SELECT * FROM cte_delete_articles; -- inserting the data that delete from articles table into articles_deleted table

-- Lets do similar operations with INSERT
-- suppose we want to move all data from articles to another table articles_insert

CREATE TABLE articles_insert AS SELECT * FROM articles limit 0;


WITH cte_move_articles AS
(
    DELETE FROM articles 
    RETURNING *
)

INSERT INTO articles_insert
SELECT * FROM cte_move_articles;

/*
1.CTEs that calls itself until a condition met 
2.Can be used to work with heirarchical data 
3.The traditional solution would involve some kind of iteration, probably by means of a cursor  that iterates one tuple
at a time over the whole resultset.
4.The logic of recursive CTE is like a 'for loop' in programming language
5.when we use CTEs it is important to avoid infinate loops. these can happen if the recursion does not end properly

WITH RECURSIVE cte_name AS 
(
    CTE_query_definition -- non-recursive term
    UNION [ALL]   
    CTE_query definition --recursive term
    exit conditions
)

SELECT * FROM cte_name
*/
-- Creating a time series with recursive CTEs
WITH RECURSIVE series (list_num) AS
(
    -- non recursive term
    SELECT 10
    UNION ALL
    -- recursive term
    SELECT list_num + 5 FROM series
    WHERE list_num + 5 <= 50
)

SELECT list_num FROM series;


CREATE TABLE items (
    pk SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    parent INT
);

INSERT INTO items (pk, name, parent) VALUES
(1, 'vegetables', 0),
(2, 'fruits', 0),
(3, 'apple', 2),
(4, 'banana', 2);


-- tree level, name 
-- 1. vegetable, 
-- 2. fruits,
-- 3. fruits -> apple
-- 4. fruits -> banana

WITH RECURSIVE cte_tree AS
(
    --  non recursive statements
    -- all parent info
    SELECT
        name,
        pk,
        1 AS tree_level
    FROM items
    WHERE parent = 0
    UNION
    -- recursive statments
    -- loop to get all child of each parent
    SELECT
        tt.name || ' --> ' ||ct.name, 
        ct.pk, 
        tt.tree_level + 1 
    FROM items ct 
    JOIN cte_tree tt ON tt.pk = ct.parent
    
)

SELECT
    tree_level, name 
FROM cte_tree
ORDER BY tree_level;
