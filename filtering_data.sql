select * from movies order by movie_length desc fetch first 5 rows only offset 5;

SELECT * FROM movies
WHERE movie_lang IN('Chinese', 'Japanese', 'English')
ORDER BY movie_lang;

SELECT * FROM movies
WHERE age_certificate IN ('13', 'PG')
ORDER BY age_certificate ASC;
 
SELECT * FROM movies
WHERE age_certificate  NOT IN ('13', 'PG')
ORDER BY age_certificate ASC;
 
SELECT * FROM actors
WHERE actor_id NOT IN (1, 2, 3, 4);

SELECT * FROM actors
WHERE actor_id NOT IN (1, 2, 3, 4);

SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' AND '1995-01-01'
ORDER BY date_of_birth;

SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' AND '1995-01-01'
ORDER BY date_of_birth;

SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' AND '1995-12-31'
ORDER BY date_of_birth;
 
SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' AND '1995-12-31'
ORDER BY date_of_birth;

SELECT * FROM movies
WHERE 
    release_date BETWEEN '1998-01-01' AND '2002-12-31'
ORDER BY release_date;
 
SELECT * FROM movies
WHERE 
    release_date BETWEEN '1998-01-01' AND '2002-12-31'
ORDER BY release_date;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' AND '300'
ORDER BY revenues_domestic;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' AND '300'
ORDER BY revenues_domestic nulls last;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' AND '300'
ORDER BY revenues_domestic nulls last;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' AND '300'
ORDER BY revenues_domestic NULLS LAST;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' AND '300'
ORDER BY revenues_domestic NULLS LAST;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' AND '300'
ORDER BY revenues_domestic, revenues_international NULLS LAST;
/* 2022-10-19 19:13:19 [6 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic, revenues_international NULLS LAST;

SELECT * FROM movies
WHERE 
    movie_length BETWEEN '100' and '200'
ORDER BY movie_length NULLS LAST;

SELECT * FROM movies
WHERE 
    movie_length BETWEEN '100' and '200'
ORDER BY movie_length NULLS LAST;
 
SELECT * FROM actors
WHERE 
     first_name LIKE 'A%';
 
SELECT * FROM actors
WHERE 
     first_name LIKE 'A%';

SELECT * FROM actors
WHERE 
     last_name LIKE '%A';
 
SELECT * FROM actors
WHERE 
     last_name LIKE '%A';

SELECT * FROM actors
WHERE 
     last_name LIKE '%a';
 
SELECT * FROM actors
WHERE 
     last_name LIKE '%a';
 
SELECT * FROM actors
WHERE 
     first_name LIKE '_____';
 
SELECT * FROM actors
WHERE 
     first_name LIKE '_____';

SELECT * FROM actors
WHERE 
     first_name LIKE '%l%';

SELECT * FROM actors
WHERE 
     first_name LIKE '%l%';
 
SELECT * FROM actors
WHERE 
     first_name LIKE '_l%';
 
SELECT * FROM actors
WHERE 
     first_name LIKE '_l%';
 
SELECT * FROM actors
WHERE 
     date_of_birth is NULL;

SELECT * FROM actors
WHERE 
     date_of_birth is NULL;

SELECT * FROM actors
WHERE 
     date_of_birth IS NULL;
 
SELECT * FROM actors
WHERE 
     date_of_birth IS NULL;
 
SELECT * FROM actors
WHERE 
     date_of_birth IS NULL or first_name IS NULL;

SELECT * FROM actors
WHERE 
     date_of_birth IS NULL or first_name IS NULL;
 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL;
 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL
ORDER BY revenues_domestic;
 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL
ORDER BY revenues_domestic;
 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic = NULL
ORDER BY revenues_domestic;

SELECT * FROM movies_revenues
WHERE 
    revenues_domestic = NULL
ORDER BY revenues_domestic;
select * from  movies
where movie_length not between 100 and 200;
 
select * from  movies
where movie_length not between 100 and 200;

