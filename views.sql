-- Views
-- You can save your query into a view. so instead of writing long queries, you can just refer to a VIEW.
-- A VIEW is a database object that is of a 'stored query'
-- A VIEW is a virtual table you can create dynamically using a saved query acting as a 'virtual table'
-- VIEWS helps to encapsulate queries and logic resusable PostgreSQL database objects that will speed up your work
-- Views are like do not repeat yourself
-- Similar
    -- query a view,
    -- join  a view to regular tables,
    -- use the view to update or insert data into the table its based on albiet with some caviets
-- a regular do not store any data except the 'materialized views'.
-- please note that a regular views do not store any data except the 'materialized views'
-- How views are useful?
-- Views are especially useful becuase they allow you to:
-- Avoid duplicate  effort by letting you to write a query once and access the results when needed
-- Reduce complexity for yourself or other database users by showing only columns relavant to your needs
-- Provide security by limiting access to only certian in a table
-- Like a table, you can grant permission to users through a view that contains specific data or columns that the users are authorized to see.
-- CREATE a VIEW
/* CREATE OR REPLACE VIEW view_name AS query
-- 'query' can be;
SELECT
SELECT with subquery
SELECT with joins
pretty much anything that you run via SELECT can be turned into a view!
*/

CREATE OR REPLACE VIEW v_movie_quick AS
SELECT movie_name,
        movie_length, 
        release_date
FROM movies mv;



CREATE OR REPLACE VIEW v_movies_directors_all AS
SELECT
    mv.movie_id,
    mv.movie_name,
    mv.movie_length,
    mv.movie_lang,
    mv.age_certificate, 
    mv.release_date,
    mv.director_id,

    d.first_name,
    d.last_name,
    d.date_of_birth,
    d.nationality
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id;


-- How to use a view for query datasets?

SELECT * FROM  v_movie_quick;
SELECT * FROM v_movies_directors_all;


-- How to rename a VIEW?
-- ALTER VIEW view_name RENAME TO new_view_name?
ALTER VIEW v_movie_quick RENAME TO v_movie_name_quick2;

-- How to delete a view or drop a VIEW
DROP VIEW v_movie_name_quick2;



-- Using Conditions/filter with views

-- create a view to list all movies released after 1997
CREATE OR REPLACE VIEW v_movies_after_1997 AS
SELECT * 
FROM movies
WHERE release_date >= '1997-12-31' 
ORDER BY release_date DESC;  


-- Select all movies with english language only from the VIEW

SELECT * 
FROM v_movies_after_1997
WHERE movie_lang = 'English'
AND age_certificate = '12';


-- Select all movies with directors with American, and Japanese nationalities
-- without views
SELECT
* 
FROM movies mv
INNER JOIN directors d ON d.director_id = mv.director_id
WHERE nationality in ('American', 'Japanese');

-- with views
-- we dont need to worry about giving join tables aliases in the views

SELECT
* FROM v_movies_directors_all
WHERE nationality IN ('American', 'Japanese');


-- A VIEW using SELECT and UNION with multiple tables
-- Lets have a view for all peoples in a movie like actors and directors with first, last names
CREATE VIEW v_all_actors_directors AS
SELECT
first_name , last_name, 'actors' as people_type
FROM actors
UNION ALL
SELECT
first_name, last_name, 'directors' as people_type
FROM directors;

SELECT * From v_all_actors_directors;

-- Connecting multiple tables with single view
-- Lets connect movies, directors, movies revenues tables with a single VIEW
SELECT 
* FROM movies mv
INNER JOIN directors d on d.director_id = mv.director_id
INNER JOIN movies_revenues mr on mr.movie_id = mv.movie_id;

-- The above query contains multiple same columns like movie_id, can we use CREATE VIEW?
-- NO
CREATE OR REPLACE  VIEW v_movies_directors_revenues AS
SELECT 
    mv.movie_id,
    mv.movie_name,
    mv.movie_length,
    mv.movie_lang,
    mv.age_certificate,
    mv.release_date,

    d.director_id,
    d.first_name,
    d.last_name,
    d.nationality, 
    d.date_of_birth,
    
    mr.revenue_id,
    mr.revenues_domestic,
    mr.revenues_international

FROM movies mv
INNER JOIN directors d ON d.director_id = mv.director_id
INNER JOIN movies_revenues mr ON mr.movie_id = mv.movie_id;


-- without views
SELECT 
    mv.movie_id,
    mv.movie_name,
    mv.movie_length,
    mv.movie_lang,
    mv.age_certificate,
    mv.release_date,

    d.director_id,
    d.first_name,
    d.last_name,
    d.nationality, 
    d.date_of_birth,
    
    mr.revenue_id,
    mr.revenues_domestic,
    mr.revenues_international

FROM movies mv
INNER JOIN directors d ON d.director_id = mv.director_id
INNER JOIN movies_revenues mr ON mr.movie_id = mv.movie_id
WHERE age_certificate = '12';

-- Changing views
-- Can I rearrange a column to an existing view?
-- The way is to delete the existing view and then create a new view for re-arranging the columns?

-- So either we rename the old view or delete it and then we create our new view with required columns!
-- PostreSQL does not support removing an existing columns that were generated when the view was created.
-- The new columns must have the same 



SELECT 
* FROM v_movies_directors_revenues
WHERE age_certificate = '12';

-- PostgresSQL does not support removing an existing column in the view
-- The query must generate the same columns that were generated earlier 


-- Can i add a column to existing view
CREATE OR REPLACE VIEW v_directors AS 
SELECT 
    first_name,
    last_name,
    nationality
FROM directors;

-- now try to replace column order in VIEW
-- CREATE OR REPLACE VIEW v_directors AS
-- SELECT
--     first_name,
--     nationality,
--     last_name
-- FROM directors;

-- SQL:  CREATE OR REPLACE VIEW v_directors AS SELECT first_name, nationality, last_name FROM directors;

-- cannot change name of view column "last_name" to "nationality"



-- A regular view:
-- does not store data physically
-- always give updated data
SELECT * FROM v_directors;

--  Lets insert some data 
INSERT INTO directors (first_name) VALUES ('test name1');

SELECT * FROM directors;

-- again check for directors VIEW
SELECT * FROM v_directors; 
-- Give the updated data from directors

DELETE FROM directors WHERE director_id = 39;

SELECT * FROM v_directors;



-- What is an updatable view
-- CREATE OR REPLACE VIEW view_name AS query
-- An updatable view allows you to update the data on the underlying data. However, there are some rules to follow:
-- 1. The query must have one from entry which can be either a table or updatable view
-- 2. The 'query' cannot contains the following at the top level?
-- DISTINCT
-- GROUP
-- WITH

-- LIMIT
-- OFFSET

-- UNION
-- INTERSECT
-- EXCEPT

-- HAVING

-- 3. you can not use the following in the selection list:
-- Any window function
-- Any set-running function
-- Any aggregate function such as 
-- SUM, COUNT, AVG, MIN, MAX
-- pretty limited options, but remember we are only updating the data here and not ideally selecting the data!
-- 4. you can use following operations to update the data 
/* INSERT
   UPDATE
   DELETE
   
   along with say a WHERE clause

   When you perform an update operations, user must have corresponding privilege on the view, but you don't need to have privilege on the underlying table!!
*/
-- Lets create an updatable view for directors TABLE
CREATE or REPLACE VIEW vu_directors AS
SELECT
first_name,
last_name
FROM directors;

-- lets add some records via a view and not from the underlying table
INSERT INTO vu_directors (first_name) VALUES ('dir1'), ('dir2');

-- lets check the contents of directors table via view
SELECT * FROM vu_directors;

-- Lets delete some records via a view and not from the underlying table
DELETE FROM vu_directors WHERE first_name = 'dir2';


-- Updatable views using WITH CHECK OPTIONS
-- WITH check option ensures that the changes to the base tables through the view satisfy the view-defining condition
-- Its provides a good added benefits as a security measures.
-- Lets create a table for countries
CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_code VARCHAR(4),
    city_name VARCHAR(20)
);


INSERT INTO countries (country_code, city_name) VALUES 
('US', 'New York'),
('US', 'New Jersey'),
('UK', 'London');

SELECT * FROM countries;

CREATE OR REPLACE VIEW v_cities_us AS 
SELECT country_id, country_code, city_name
FROM countries
WHERE country_code = 'US';


-- lets view the contents of v_cities_us
SELECT * FROM v_cities_us;

-- now lets insert some US based cities via our VIEW
INSERT INTO v_cities_us(country_code, city_name) VALUES 
('US', 'California');

SELECT * FROM v_cities_us;

-- What if a user added a UK based location in our VIEW
INSERT INTO v_cities_us (country_code, city_name) VALUES
('UK', 'Greater Manchester');

SELECT * FROM v_cities_us;


-- Now we have a problem, as no record of UK countries are showing in our view,
-- however the base table 'countries' contains the newly added UK city

SELECT * FROM countries;

-- TO solve we will set our views to use WITH CHECK OPTION
-- Lets update our view v_cities_us using WITH CHECK OPTION
CREATE OR REPLACE VIEW v_cities_us AS
SELECT 
country_id, 
country_code,
city_name
FROM countries
WHERE country_code = 'US'
WITH CHECK OPTION;

-- NOw lets try to add a UK based city say 'Leeds'
INSERT INTO v_cities_us (country_code, city_name) VALUES
('UK', 'LEEDS');

-- Lets try the UPDATE operations on view having WITH CHECK OPTION, can we add the DATA
UPDATE v_cities_us
SET country_code='UK'
WHERE city_name = 'New York';

-- Now lets add a US based city
INSERT INTO v_cities_us(country_code, city_name) VALUES
('US', 'Chicago');
SELECT * FROM v_cities_us;


-- To demonstrate the LOCAL and CASCADE functionalities, lets create a simple view for all
-- cities starting with letter 'C'
CREATE OR REPLACE VIEW v_cities_c AS 
SELECT country_id, country_code, city_name FROM countries
WHERE city_name LIKE 'C%';

-- Now we are gonna NEST our views within views
-- We will create a new simple view v_cities_us_c, to list;
-- all cities starting with 'C'
-- and within country code US
-- country_code = 'US' | city_name 'C%'

CREATE OR REPLACE VIEW v_cities_c_us AS
SELECT
country_id,
country_code,
city_name
FROM 
v_cities_c
WHERE
country_code = 'US'
WITH  LOCAL CHECK OPTION;


INSERT INTO v_cities_c_us (country_code, city_name) VALUES
('US', 'Connecticut');

INSERT INTO v_cities_c_us (country_code, city_name) VALUES
('US', 'Los Angeles');

-- The LOCAL conditions are satisfied within the CURRENT VIEW i.e v_cities_c_us
-- The data must be of country_code = 'US' for all data!!

-- Now lets use CASCADE and see what is the effect! Remember It goes up 
CREATE OR REPLACE VIEW v_cities_c_us AS
SELECT
country_id,
country_code,
city_name
FROM 
v_cities_c
WHERE
country_code = 'US'
WITH  CASCADED CHECK OPTION;
-- Now try to insert some us based city but city name starting other than C
INSERT INTO v_cities_c_us (country_code, city_name) VALUES
('US', 'Boston');
--  no its won't allow you
-- how about adding a city that starts with C

INSERT INTO v_cities_c_us (country_code, city_name) VALUES 
('US', 'Clearwater');

SELECT * FROM v_cities_c_us;

-- WITH CASCADED CHECK OPTION clause the PostgreSQL checks not only the conditions for
-- current_view v_cities_c_us view, but also all the underlying views, in this case, it is the v_cities_us


