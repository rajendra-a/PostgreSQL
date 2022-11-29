-- Active: 1666183948709@@127.0.0.1@5432@mydata
/* 2022-10-19 18:26:15 [8 ms] */ 
/* 2022-10-20 17:12:27 [43 ms] */ 
CREATE TABLE persons (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
);
/* 2022-10-20 17:12:27 [43 ms] */ 
CREATE TABLE persons (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
);
/* 2022-10-20 17:14:30 [13 ms] */ 
ALTER TABLE persons
ADD COLUMN age INT NOT NULL;
/* 2022-10-20 17:14:30 [13 ms] */ 
ALTER TABLE persons
ADD COLUMN age INT NOT NULL;
/* 2022-10-20 17:14:59 [22 ms] */ 
SELECT * FROM persons;
/* 2022-10-20 17:14:59 [22 ms] */ 
SELECT * FROM persons;
/* 2022-10-20 17:18:15 [18 ms] */ 
ALTER TABLE persons
ADD COLUMN nationality varchar(20) NOT NULL,
ADD COLUMN email varchar(20) UNIQUE;
/* 2022-10-20 17:18:15 [18 ms] */ 
ALTER TABLE persons
ADD COLUMN nationality varchar(20) NOT NULL,
ADD COLUMN email varchar(20) UNIQUE;
/* 2022-10-20 17:19:39 [4 ms] */ 
SELECT * FROM persons;
/* 2022-10-20 17:19:39 [4 ms] */ 
SELECT * FROM persons;
/* 2022-10-20 17:22:03 [9 ms] */ 
ALTER TABLE persons
RENAME TO users;
/* 2022-10-20 17:22:03 [9 ms] */ 
ALTER TABLE persons
RENAME TO users;
/* 2022-10-20 17:22:44 [18 ms] */ 
ALTER TABLE users
RENAME TO persons;
/* 2022-10-20 17:22:44 [18 ms] */ 
ALTER TABLE users
RENAME TO persons;
/* 2022-10-20 17:23:57 [12 ms] */ 
ALTER TABLE persons
RENAME COLUMN age TO persons_age;
/* 2022-10-20 17:23:57 [12 ms] */ 
ALTER TABLE persons
RENAME COLUMN age TO persons_age;
/* 2022-10-20 17:24:15 [8 ms] */ 
ALTER TABLE persons
RENAME COLUMN persons_age TO person_age;
/* 2022-10-20 17:24:15 [8 ms] */ 
ALTER TABLE persons
RENAME COLUMN persons_age TO person_age;
/* 2022-10-20 17:26:22 [12 ms] */ 
ALTER TABLE persons
DROP COLUMN person_age;
/* 2022-10-20 17:26:22 [12 ms] */ 
ALTER TABLE persons
DROP COLUMN person_age;
/* 2022-10-20 17:27:56 [9 ms] */ 
ALTER TABLE persons
ADD COLUMN age varchar(20);
/* 2022-10-20 17:27:56 [9 ms] */ 
ALTER TABLE persons
ADD COLUMN age varchar(20);
/* 2022-10-20 17:33:38 [30 ms] */ 
ALTER TABLE persons
ALTER COLUMN age TYPE INT
USING age::INT;
/* 2022-10-20 17:33:38 [30 ms] */ 
ALTER TABLE persons
ALTER COLUMN age TYPE INT
USING age::INT;
/* 2022-10-20 17:34:41 [6 ms] */ 
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(20);
/* 2022-10-20 17:34:41 [6 ms] */ 
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(20);
/* 2022-10-20 17:35:46 [8 ms] */ 
ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';
/* 2022-10-20 17:35:46 [8 ms] */ 
ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';
/* 2022-10-20 17:41:27 [4 ms] */ 
ALTER TABLE persons
ALTER COLUMN is_enable DROP DEFAULT;
/* 2022-10-20 17:41:27 [4 ms] */ 
ALTER TABLE persons
ALTER COLUMN is_enable DROP DEFAULT;
/* 2022-10-20 17:41:30 [41 ms] */ 
ALTER TABLE persons
ALTER COLUMN is_enable TYPE BOOLEAN
USING is_enable::BOOLEAN;
/* 2022-10-20 17:41:30 [41 ms] */ 
ALTER TABLE persons
ALTER COLUMN is_enable TYPE BOOLEAN
USING is_enable::BOOLEAN;
/* 2022-10-20 17:52:00 [10 ms] */ 
create TABLE web_links(
link_id SERIAL PRIMARY key,
link_url VARCHAR(255) NOT NULL,
link_target VARCHAR(20)
);
/* 2022-10-20 17:52:00 [10 ms] */ 
create TABLE web_links(
link_id SERIAL PRIMARY key,
link_url VARCHAR(255) NOT NULL,
link_target VARCHAR(20)
);
/* 2022-10-20 17:57:33 [15 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 17:57:33 [15 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:00:48 [10 ms] */ 
select * FROM web_links;
/* 2022-10-20 18:00:48 [10 ms] */ 
select * FROM web_links;
/* 2022-10-20 18:04:55 [20 ms] */ 
ALTER TABLE web_links
ALTER COLUMN link_url TYPE varchar(255)
using link_url::varchar(255);
/* 2022-10-20 18:04:55 [20 ms] */ 
ALTER TABLE web_links
ALTER COLUMN link_url TYPE varchar(255)
using link_url::varchar(255);
/* 2022-10-20 18:05:01 [13 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:05:01 [13 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:10:02 [13 ms] */ 
ALTER TABLE web_links
ALTER COLUMN link_url SET NOT NULL;
/* 2022-10-20 18:10:02 [13 ms] */ 
ALTER TABLE web_links
ALTER COLUMN link_url SET NOT NULL;
/* 2022-10-20 18:10:56 [10 ms] */ 
ALTER TABLE web_links
ALTER COLUMN link_url DROP NOT NULL;
/* 2022-10-20 18:10:56 [10 ms] */ 
ALTER TABLE web_links
ALTER COLUMN link_url DROP NOT NULL;
/* 2022-10-20 18:11:49 [9 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:11:49 [9 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:11:50 [5 ms] */ 
select * FROM web_links;
/* 2022-10-20 18:11:50 [5 ms] */ 
select * FROM web_links;
/* 2022-10-20 18:12:20 [34 ms] */ 
TRUNCATE web_links;
/* 2022-10-20 18:12:20 [34 ms] */ 
TRUNCATE web_links;
/* 2022-10-20 18:12:24 [16 ms] */ 
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);
/* 2022-10-20 18:12:24 [16 ms] */ 
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);
/* 2022-10-20 18:12:26 [13 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:12:26 [13 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:13:41 [13 ms] */ 
ALTER TABLE web_links
DROP CONSTRAINT unique_web_url;
/* 2022-10-20 18:13:41 [13 ms] */ 
ALTER TABLE web_links
DROP CONSTRAINT unique_web_url;
/* 2022-10-20 18:13:49 [16 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:13:49 [16 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:14:06 [11 ms] */ 
select * from  web_links;
/* 2022-10-20 18:14:06 [11 ms] */ 
select * from  web_links;
/* 2022-10-20 18:14:29 [40 ms] */ 
TRUNCATE web_links;
/* 2022-10-20 18:14:29 [40 ms] */ 
TRUNCATE web_links;
/* 2022-10-20 18:14:32 [17 ms] */ 
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);
/* 2022-10-20 18:14:32 [17 ms] */ 
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);
/* 2022-10-20 18:14:34 [8 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:14:34 [8 ms] */ 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
/* 2022-10-20 18:22:59 [10 ms] */ 
ALTER TABLE web_links
ADD COLUMN is_enable varchar(2);
/* 2022-10-20 18:22:59 [10 ms] */ 
ALTER TABLE web_links
ADD COLUMN is_enable varchar(2);
/* 2022-10-20 18:24:31 [16 ms] */ 
alter Table web_links
add check (is_enable in ('Y', 'N'));
/* 2022-10-20 18:24:31 [16 ms] */ 
alter Table web_links
add check (is_enable in ('Y', 'N'));
/* 2022-10-20 18:27:29 [9 ms] */ 
INSERT INTO web_links (link_url, link_target, is_enable) values ('http://www.df.com', '_blank', 'Y');
/* 2022-10-20 18:27:29 [9 ms] */ 
INSERT INTO web_links (link_url, link_target, is_enable) values ('http://www.df.com', '_blank', 'Y');
/* 2022-10-20 18:28:30 [11 ms] */ 
select * from web_links;
/* 2022-10-20 18:28:30 [11 ms] */ 
select * from web_links;
/* 2022-10-21 17:59:41 [13 ms] */ 
select * from movies order by movie_length desc fetch first 5 rows only offset 5;
/* 2022-10-19 18:48:53 [14 ms] */ 
SELECT * FROM movies
WHERE movie_lang IN('Chinese', 'Japanese', 'English')
ORDER BY movie_lang;
/* 2022-10-19 18:51:02 [3 ms] */ 
SELECT * FROM movies
WHERE age_certificate IN ('13', 'PG')
ORDER BY age_certificate ASC;
/* 2022-10-19 18:57:28 [13 ms] */ 
SELECT * FROM movies
WHERE age_certificate not in ('13', 'PG')
ORDER BY age_certificate ASC;
/* 2022-10-19 18:59:27 [25 ms] */ 
SELECT * FROM actors
WHERE actor_id not in (1, 2, 3, 4);
/* 2022-10-19 18:59:27 [25 ms] */ 
SELECT * FROM actors
WHERE actor_id not in (1, 2, 3, 4);
/* 2022-10-19 19:04:54 [17 ms] */ 
SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' and '1995-01-01'
ORDER BY date_of_birth;
/* 2022-10-19 19:04:54 [17 ms] */ 
SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' and '1995-01-01'
ORDER BY date_of_birth;
/* 2022-10-19 19:05:26 [6 ms] */ 
SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' and '1995-12-31'
ORDER BY date_of_birth;
/* 2022-10-19 19:05:26 [6 ms] */ 
SELECT * FROM actors
WHERE 
    date_of_birth BETWEEN '1991-01-01' and '1995-12-31'
ORDER BY date_of_birth;
/* 2022-10-19 19:07:52 [7 ms] */ 
SELECT * FROM movies
WHERE 
    release_date BETWEEN '1998-01-01' and '2002-12-31'
ORDER BY release_date;
/* 2022-10-19 19:07:52 [7 ms] */ 
SELECT * FROM movies
WHERE 
    release_date BETWEEN '1998-01-01' and '2002-12-31'
ORDER BY release_date;
/* 2022-10-19 19:10:23 [10 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic;
/* 2022-10-19 19:10:23 [10 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic;
/* 2022-10-19 19:11:05 [6 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic nulls last;
/* 2022-10-19 19:11:05 [6 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic nulls last;
/* 2022-10-19 19:12:34 [6 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic NULLS LAST;
/* 2022-10-19 19:12:34 [6 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic NULLS LAST;
/* 2022-10-19 19:13:19 [6 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic, revenues_international NULLS LAST;
/* 2022-10-19 19:13:19 [6 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic BETWEEN '100' and '300'
ORDER BY revenues_domestic, revenues_international NULLS LAST;
/* 2022-10-19 19:14:48 [16 ms] */ 
SELECT * FROM movies
WHERE 
    movie_length BETWEEN '100' and '200'
ORDER BY movie_length NULLS LAST;
/* 2022-10-19 19:14:48 [16 ms] */ 
SELECT * FROM movies
WHERE 
    movie_length BETWEEN '100' and '200'
ORDER BY movie_length NULLS LAST;
/* 2022-10-19 19:24:40 [10 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE 'A%';
/* 2022-10-19 19:24:40 [10 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE 'A%';
/* 2022-10-19 19:27:05 [9 ms] */ 
SELECT * FROM actors
WHERE 
     last_name LIKE '%A';
/* 2022-10-19 19:27:05 [9 ms] */ 
SELECT * FROM actors
WHERE 
     last_name LIKE '%A';
/* 2022-10-19 19:27:23 [5 ms] */ 
SELECT * FROM actors
WHERE 
     last_name LIKE '%a';
/* 2022-10-19 19:27:23 [5 ms] */ 
SELECT * FROM actors
WHERE 
     last_name LIKE '%a';
/* 2022-10-19 19:29:00 [7 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE '_____';
/* 2022-10-19 19:29:00 [7 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE '_____';
/* 2022-10-19 19:35:14 [10 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE '%l%';
/* 2022-10-19 19:35:14 [10 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE '%l%';
/* 2022-10-19 19:35:25 [8 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE '_l%';
/* 2022-10-19 19:35:25 [8 ms] */ 
SELECT * FROM actors
WHERE 
     first_name LIKE '_l%';
/* 2022-10-19 19:39:44 [6 ms] */ 
SELECT * FROM actors
WHERE 
     date_of_birth is NULL;
/* 2022-10-19 19:39:44 [6 ms] */ 
SELECT * FROM actors
WHERE 
     date_of_birth is NULL;
/* 2022-10-19 19:40:04 [9 ms] */ 
SELECT * FROM actors
WHERE 
     date_of_birth IS NULL;
/* 2022-10-19 19:40:04 [9 ms] */ 
SELECT * FROM actors
WHERE 
     date_of_birth IS NULL;
/* 2022-10-19 19:41:14 [9 ms] */ 
SELECT * FROM actors
WHERE 
     date_of_birth IS NULL or first_name IS NULL;
/* 2022-10-19 19:41:14 [9 ms] */ 
SELECT * FROM actors
WHERE 
     date_of_birth IS NULL or first_name IS NULL;
/* 2022-10-19 19:43:05 [8 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL;
/* 2022-10-19 19:43:05 [8 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL;
/* 2022-10-19 19:43:59 [9 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL
ORDER BY revenues_domestic;
/* 2022-10-19 19:43:59 [9 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic IS NULL
ORDER BY revenues_domestic;
/* 2022-10-19 19:48:36 [2 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic = NULL
ORDER BY revenues_domestic;
/* 2022-10-19 19:48:36 [2 ms] */ 
SELECT * FROM movies_revenues
WHERE 
    revenues_domestic = NULL
ORDER BY revenues_domestic;
/* 2022-10-19 19:53:53 [7 ms] */ 
select * from  movies
where movie_length not between 100 and 200;
/* 2022-10-19 19:53:53 [7 ms] */ 
select * from  movies
where movie_length not between 100 and 200;
/* 2022-10-19 20:00:12 [12 ms] */ 
SELECT CONCAT(first_name, last_name) AS "ActorName" 
FROM actors;
/* 2022-10-19 20:00:12 [12 ms] */ 
SELECT CONCAT(first_name, last_name) AS "ActorName" 
FROM actors;
/* 2022-10-19 20:00:42 [12 ms] */ 
SELECT CONCAT(first_name, last_name) AS "Actor Name" 
FROM actors;
/* 2022-10-19 20:00:42 [12 ms] */ 
SELECT CONCAT(first_name, last_name) AS "Actor Name" 
FROM actors;
/* 2022-10-19 20:02:04 [4 ms] */ 
select 'hello' || 'world' as "newstring";
/* 2022-10-19 20:02:04 [4 ms] */ 
select 'hello' || 'world' as "newstring";
/* 2022-10-19 20:06:21 [9 ms] */ 
SELECT CONCAT_WS(',',first_name, last_name) AS "Actor Name" 
FROM actors;
/* 2022-10-19 20:06:21 [9 ms] */ 
SELECT CONCAT_WS(',',first_name, last_name) AS "Actor Name" 
FROM actors;
/* 2022-10-19 20:07:23 [7 ms] */ 
SELECT CONCAT_WS(',',first_name, last_name, date_of_birth) AS "Actor Name" 
FROM actors;
/* 2022-10-19 20:07:23 [7 ms] */ 
SELECT CONCAT_WS(',',first_name, last_name, date_of_birth) AS "Actor Name" 
FROM actors;
/* 2022-10-21 18:08:17 [18 ms] */ 
SELECT 
    release_date,
    TO_CHAR(release_date,'DD-MM-YYYY'),
    TO_CHAR(release_date,'Dy, Month, YYYY')
FROM movies;
/* 2022-10-21 18:08:17 [18 ms] */ 
SELECT 
    release_date,
    TO_CHAR(release_date,'DD-MM-YYYY'),
    TO_CHAR(release_date,'Dy, Month, YYYY')
FROM movies;
/* 2022-10-21 18:19:31 [15 ms] */ 
select * from pg_catalog.pg_tables;
/* 2022-10-21 18:19:31 [15 ms] */ 
select * from pg_catalog.pg_tables;
/* 2022-10-21 18:22:13 [6 ms] */ 
select * from pg_catalog.pg_tables where schemaname='movies';
/* 2022-10-21 18:22:13 [6 ms] */ 
select * from pg_catalog.pg_tables where schemaname='movies';
/* 2022-10-21 18:26:28 [15 ms] */ 
select table_name, column_name, data_type
from information_schema.columns
where table_name = 'moveis';
/* 2022-10-21 18:26:28 [15 ms] */ 
select table_name, column_name, data_type
from information_schema.columns
where table_name = 'moveis';
/* 2022-10-21 18:30:40 [7 ms] */ 
select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'hh:mi:ss');
/* 2022-10-21 18:30:40 [7 ms] */ 
select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'hh:mi:ss');
/* 2022-10-21 18:31:10 [2 ms] */ 
select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'HH:MI:SS');
/* 2022-10-21 18:31:10 [2 ms] */ 
select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'HH:MI:SS');
/* 2022-10-21 18:38:13 [21 ms] */ 
SELECT * FROM movies_revenues;
/* 2022-10-21 18:38:13 [21 ms] */ 
SELECT * FROM movies_revenues;
/* 2022-10-21 18:50:49 [8 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9,9999')
FROM movies_revenues;
/* 2022-10-21 18:50:49 [8 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9,9999')
FROM movies_revenues;
/* 2022-10-21 18:52:13 [5 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9.9999')
FROM movies_revenues;
/* 2022-10-21 18:52:13 [5 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9.9999')
FROM movies_revenues;
/* 2022-10-21 18:53:10 [5 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999.9999')
FROM movies_revenues;
/* 2022-10-21 18:53:10 [5 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999.9999')
FROM movies_revenues;
/* 2022-10-21 18:53:41 [26 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;
/* 2022-10-21 18:53:41 [26 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;
/* 2022-10-21 19:11:46 [5 ms] */ 
SELECT TO_NUMBER('123.56', '99999');
/* 2022-10-21 19:11:46 [5 ms] */ 
SELECT TO_NUMBER('123.56', '99999');
/* 2022-10-21 19:12:14 [7 ms] */ 
SELECT TO_NUMBER('123.56', '999');
/* 2022-10-21 19:12:14 [7 ms] */ 
SELECT TO_NUMBER('123.56', '999');
/* 2022-10-21 19:12:19 [3 ms] */ 
SELECT TO_NUMBER('123.56', '99956');
/* 2022-10-21 19:12:19 [3 ms] */ 
SELECT TO_NUMBER('123.56', '99956');
/* 2022-10-21 19:12:29 [7 ms] */ 
SELECT TO_NUMBER('123.56', '99999');
/* 2022-10-21 19:12:29 [7 ms] */ 
SELECT TO_NUMBER('123.56', '99999');
/* 2022-10-21 19:14:13 [4 ms] */ 
SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999'
);
/* 2022-10-21 19:14:13 [4 ms] */ 
SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999'
);
/* 2022-10-21 19:14:36 [2 ms] */ 
SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999s'
);
/* 2022-10-21 19:14:36 [2 ms] */ 
SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999s'
);
/* 2022-10-21 19:20:22 [5 ms] */ 
SELECT TO_NUMBER(
    '$1,420.65',
    'L9g999'
);
/* 2022-10-21 19:20:22 [5 ms] */ 
SELECT TO_NUMBER(
    '$1,420.65',
    'L9g999'
);
/* 2022-10-21 19:21:06 [7 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999'
);
/* 2022-10-21 19:21:06 [7 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999'
);
/* 2022-10-21 19:27:10 [5 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999g34'
);
/* 2022-10-21 19:27:10 [5 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999g34'
);
/* 2022-10-21 19:27:27 [6 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999d34'
);
/* 2022-10-21 19:27:27 [6 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999d34'
);
/* 2022-10-21 19:27:45 [4 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d34'
);
/* 2022-10-21 19:27:45 [4 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d34'
);
/* 2022-10-21 19:28:02 [6 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);
/* 2022-10-21 19:28:02 [6 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);
/* 2022-10-21 19:28:18 [2 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d'
);
/* 2022-10-21 19:28:18 [2 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d'
);
/* 2022-10-21 19:28:22 [5 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);
/* 2022-10-21 19:28:22 [5 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);
/* 2022-10-21 19:28:28 [7 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d66'
);
/* 2022-10-21 19:28:28 [7 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d66'
);
/* 2022-10-21 19:28:32 [3 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d688'
);
/* 2022-10-21 19:28:32 [3 ms] */ 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d688'
);
/* 2022-10-21 19:34:13 [7 ms] */ 
SELECT TO_DATE('2020/07/01','YYYY/MM/DD');
/* 2022-10-21 19:34:13 [7 ms] */ 
SELECT TO_DATE('2020/07/01','YYYY/MM/DD');
/* 2022-10-21 19:34:49 [9 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;
/* 2022-10-21 19:34:49 [9 ms] */ 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;
/* 2022-10-21 19:37:29 [3 ms] */ 
SELECT TO_DATE('022799','MMDDYY');
/* 2022-10-21 19:37:29 [3 ms] */ 
SELECT TO_DATE('022799','MMDDYY');
/* 2022-10-21 19:38:25 [4 ms] */ 
SELECT TO_DATE('033199','MMDDYY');
/* 2022-10-21 19:38:25 [4 ms] */ 
SELECT TO_DATE('033199','MMDDYY');
/* 2022-10-21 19:44:20 [2 ms] */ 
SELECT TO_DATE('March 03, 1993', 'Month DD, YYYY');
/* 2022-10-21 19:44:20 [2 ms] */ 
SELECT TO_DATE('March 03, 1993', 'Month DD, YYYY');
/* 2022-10-21 19:44:27 [1 ms] */ 
SELECT TO_DATE('March11, 1993', 'Month DD, YYYY');
/* 2022-10-21 19:44:27 [1 ms] */ 
SELECT TO_DATE('March11, 1993', 'Month DD, YYYY');
/* 2022-10-21 19:44:31 [2 ms] */ 
SELECT TO_DATE('March 11, 1993', 'Month DD, YYYY');
/* 2022-10-21 19:44:31 [2 ms] */ 
SELECT TO_DATE('March 11, 1993', 'Month DD, YYYY');
/* 2022-10-21 19:45:41 [7 ms] */ 
SELECT TO_DATE('2020/12/11','YYYY/MM/DD');
/* 2022-10-21 19:45:41 [7 ms] */ 
SELECT TO_DATE('2020/12/11','YYYY/MM/DD');
/* 2022-10-21 19:46:56 [5 ms] */ 
SELECT TO_DATE('2020/02/25','YYYY/MM/DD');
/* 2022-10-21 19:46:56 [5 ms] */ 
SELECT TO_DATE('2020/02/25','YYYY/MM/DD');
/* 2022-10-21 19:49:04 [4 ms] */ 
SELECT TO_CHAR(1234, '7,786.87');
/* 2022-10-21 19:49:04 [4 ms] */ 
SELECT TO_CHAR(1234, '7,786.87');
/* 2022-10-21 19:51:09 [13 ms] */ 
SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD');
/* 2022-10-21 19:51:09 [13 ms] */ 
SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD');
/* 2022-10-21 19:52:04 [5 ms] */ 
SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD HH-MI-SS');
/* 2022-10-21 19:52:04 [5 ms] */ 
SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD HH-MI-SS');
/* 2022-10-21 19:55:02 [1 ms] */ 
SELECT CURRENT_TIMESTAMP;
/* 2022-10-21 19:55:02 [1 ms] */ 
SELECT CURRENT_TIMESTAMP;
CREATE DOMAIN addr VARCHAR(40) NOT NULL;


CREATE TABLE locations (address addr);

INSERT INTO locations (address) values ('123 London');

CREATE DOMAIN positive_numeric INT NOT NULL CHECK (VALUE > 0);


CREATE TABLE sample (
    sample_id SERIAL PRIMARY KEY,
    value_num positive_numeric
);

INSERT INTO sample (value_num) values (-10);


CREATE DOMAIN us_postal_code AS TEXT 
CHECK (VALUE ~'^\d{5}$' OR VALUE ~'^\D{5}-\d{4}$');


CREATE TABLE addresses (
address_id SERIAL PRIMARY KEY,
postal_code us_postal_code
);


INSERT INTO addresses (postal_code) VALUES ('10000');

INSERT INTO addresses (postal_code) VALUES ('texas-9999');



CREATE DOMAIN proper_mail VARCHAR(150)
CHECK (VALUE ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$');

CREATE TABLE client_names (
    client_name_id SERIAL PRIMARY KEY,
    email proper_mail
);

DROP DOMAIN proper_mail;

DROP TABLE client_names;

INSERT INTO client_names (email) VALUES ('rajendra@gmail.com');
-- composite type

CREATE TYPE address  AS (
    city VARCHAR(50),
    country VARCHAR(20)
);


CREATE TABLE companies (
    comp_id SERIAL PRIMARY KEY,
    address address
);

INSERT INTO companies (address) VALUES (ROW('LONDON', 'UK'));
INSERT INTO companies (address) VALUES (ROW('NEW YORK', 'US'));
SELECT (address).city from companies;
SELECT (companies.address).city from companies;


CREATE TYPE inventory_item AS (
    product_name VARCHAR(200),
    supplier_id INT,
    price NUMERIC
);

CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,
    item inventory_item
);

SELECT * FROM inventory;

INSERT INTO inventory (item) values (ROW('pen', 10, 9));

INSERT INTO inventory (item) values (ROW('pencil', 10, 5));
INSERT INTO inventory (item) values (ROW('book', 10, 15));


SELECT (item).product_name from inventory;

SELECT (item).product_name  FROM  inventory where (item).price >= 9; 

CREATE TYPE currency AS ENUM ('USD', 'EUR', 'GBP');


SELECT 'USD'::currency;


ALTER TYPE currency ADD VALUE 'CHF' BEFORE 'EUR';


CREATE TABLE stocks (
    stock_id SERIAL PRIMARY KEY,
    stock_currency currency
);

INSERT INTO stocks (stock_currency) VALUES ('USD'), ('EUR'), ('CHF');

CREATE  TABLE table_nn (
    id SERIAL PRIMARY KEY,
    tag TEXT NOT NULL
);
SELECT * from table_nn;

INSERT INTO table_nn (tag) VALUES ('A');

INSERT INTO table_nn (tag) VALUES (NULL);

INSERT INTO table_nn (tag) VALUES (' ');

INSERT INTO table_nn (tag) VALUES (0);
CREATE TABLE tag_nn2 (
    id SERIAL PRIMARY KEY,
    tag2 TEXT
);

ALTER TABLE tag_nn2
ALTER COLUMN tag2 SET NOT NULL;

INSERT INTO tag_nn2 (tag2) VALUES ('rajendra');

 INSERT INTO tag_nn2 (tag2) VALUES (NULL);

 SELECT * FROM tag_nn2;

 CREATE TABLE table_emails (
    id SERIAL PRIMARY KEY,
    emails TEXT UNIQUE
 );

SELECT * FROM table_emails;

INSERT INTO table_emails (emails) VALUES ('raj@gmail.com');
INSERT INTO table_emails (emails) VALUES ('naidu@gmail.com');
INSERT INTO table_emails (emails) VALUES ('naidu@gmail.com');

CREATE TABLE table_products (
    id SERIAL PRIMARY KEY,
    product_code VARCHAR(10),
    product_name TEXT
);

ALTER TABLE table_products
ADD CONSTRAINT unique_product_code UNIQUE (product_code, product_name);
INSERT INTO table_products (product_code, product_name) VALUES ('C', 'apple');

CREATE  TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(2),
    is_enable VARCHAR(2) DEFAULT 'Y'
);

ALTER TABLE employees
ALTER COLUMN last_name type VARCHAR(50)
USING last_name:: VARCHAR(50);

SELECT * FROM employees;

INSERT INTO employees (first_name, last_name) VALUES ('rajendra', 'reddy');
INSERT INTO employees (first_name, last_name, is_enable) VALUES ('naidu', 'appala', 'No');

ALTER TABLE employees
ALTER COLUMN is_enable SET DEFAULT 'N';

INSERT INTO employees (first_name, last_name) VALUES ('ayyappa', 'swamy');

ALTER TABLE employees
ALTER COLUMN is_enable DROP DEFAULT;


CREATE TABLE table_items (
    item_id INTEGER PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL
);

INSERT INTO table_items (item_id, item_name) VALUES (1, 'pen');

ALTER TABLE table_items
DROP CONSTRAINT table_items_pkey;



ALTER TABLE table_items
ALTER COLUMN item_name DROP NOT NULL;



ALTER TABLE table_items
ADD PRIMARY KEY(item_id,item_name);

ALTER TABLE table_items
DROP PRIMARY KEY;

select * from  table_items;


CREATE TABLE t_grades (
    course_id VARCHAR(100) NOT NULL,
    student_id VARCHAR(100) NOT NULL,
    grade INT NOT NULL
);

INSERT INTO t_grades (course_id, student_id, grade) VALUES 
('MATHS', 'S1', 50),
('CHEMISTRY', 'S1', 70),
('ENGLISH', 'S2', 70),
('Physics', 'S1', 80);

ALTER TABLE t_grades
ADD CONSTRAINT t_grades_course_id_student_id_pkey 
PRIMARY KEY (course_id, student_id);

ALTER TABLE t_grades
DROP CONSTRAINT t_grades_course_id_student_id_pkey;


CREATE TABLE t_products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
supplier_id INT NOT NULL,
Foreign Key (supplier_id) REFERENCES t_suppliers(supplier_id)
);

CREATE TABLE t_suppliers (
supplier_id INT PRIMARY KEY,
supplier_name VARCHAR(100) NOT NULL
);

INSERT INTO  t_suppliers (supplier_id, supplier_name) VALUES
(1, 'SUPPLIER 1'),
(2, 'SUPPLIER 2');

SELECT * FROM t_suppliers;
INSERT INTO t_products (product_id, product_name, supplier_id) VALUES
(1, 'PEN', 1),
(2, 'PAPER', 2);

SELECT * FROM t_products;

-- INSERT INTO t_products (product_id, product_name, supplier_id) VALUES
-- (4, 'COMPUTER', 100);

-- the above code violates foreign constraint because supplier id not present in suppliers

ALTER TABLE t_prodcuts
DROP CONSTRAINT t_products_supplier_id_fkey;


--  we can add constaint 
ALTER TABLE t_products
ADD CONSTRAINT t_prodcuts_supplier_id_fkey FOREIGN KEY(supplier_id) REFERENCES t_suppliers (supplier_id);
CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE CHECK (birth_date > '1900-01-01'),
    joined_date DATE CHECK (joined_date > birth_date),
    salary NUMERIC CHECK (salary > 0)
);



INSERT INTO staff (first_name, last_name, birth_date, joined_date, salary)
VALUES ('John', 'Adams', '2020-01-01', '2020-01-01', 100);

INSERT INTO staff (first_name, last_name, birth_date, joined_date, salary)
VALUES ('ADAM', 'KING', '1990-01-01', '2020-01-01', 100);


CREATE TABLE prices (
    price_id  SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    price NUMERIC NOT NULL,
    discount NUMERIC NOT NULL,
    valid_from DATE NOT NULL
);

ALTER TABLE prices
ADD CONSTRAINT price_check
CHECK (price > 0 AND discount >= 0 AND price > discount);

INSERT INTO prices (product_id, price, discount, valid_from) VALUES ('1', 100, 20, '2020-01-01');

ALTER TABLE prices
RENAME CONSTRAINT price_check TO price_discount_check;

ALTER TABLE prices
DROP CONSTRAINT price_discount_check;

CREATE SEQUENCE IF NOT EXISTS test_seq;

SELECT nextval('test_seq');

SELECT currval('test_seq');

SELECT setval('test_seq', 100);

SELECT setval('test_seq', 200, false);

CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 100;

CREATE SEQUENCE IF NOT EXISTS test_seq3
INCREMENT 50
MINVALUE 400
MAXVALUE 6000
START WITH 500;

SELECT nextval('test_seq3');

DROP SEQUENCE test_seq3;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50)
);

INSERT INTO users (user_name) VALUES ('ANDAN2');

SELECT * FROM users;

ALTER SEQUENCE users_user_id_seq RESTART WITH 100;


-- String Functions

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
