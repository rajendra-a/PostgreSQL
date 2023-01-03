-- Active: 1671310243994@@127.0.0.1@5432@movies
CREATE TABLE persons (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
);


ALTER TABLE persons
ADD COLUMN age INT NOT NULL;
 
ALTER TABLE persons
ADD COLUMN age INT NOT NULL;
SELECT * FROM persons;

SELECT * FROM persons;

ALTER TABLE persons
ADD COLUMN nationality varchar(20) NOT NULL,
ADD COLUMN email varchar(20) UNIQUE;

ALTER TABLE persons
ADD COLUMN nationality varchar(20) NOT NULL,
ADD COLUMN email varchar(20) UNIQUE;

SELECT * FROM persons;


ALTER TABLE persons
RENAME TO users;
 
ALTER TABLE persons
RENAME TO users;
 
ALTER TABLE users
RENAME TO persons;
 
ALTER TABLE users
RENAME TO persons;
 
ALTER TABLE persons
RENAME COLUMN age TO persons_age;
 
ALTER TABLE persons
RENAME COLUMN age TO persons_age;
 
ALTER TABLE persons
RENAME COLUMN persons_age TO person_age;
 
ALTER TABLE persons
RENAME COLUMN persons_age TO person_age;
 
ALTER TABLE persons
DROP COLUMN person_age;
 
ALTER TABLE persons
DROP COLUMN person_age;
 
ALTER TABLE persons
ADD COLUMN age varchar(20);
 
ALTER TABLE persons
ADD COLUMN age varchar(20);
 
ALTER TABLE persons
ALTER COLUMN age TYPE INT
USING age::INT;
 
ALTER TABLE persons
ALTER COLUMN age TYPE INT
USING age::INT;
 
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(20);
 
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(20);
 
ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';
 
ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';
 
ALTER TABLE persons
ALTER COLUMN is_enable DROP DEFAULT;
 
ALTER TABLE persons
ALTER COLUMN is_enable DROP DEFAULT;
 
ALTER TABLE persons
ALTER COLUMN is_enable TYPE BOOLEAN
USING is_enable::BOOLEAN;
 
ALTER TABLE persons
ALTER COLUMN is_enable TYPE BOOLEAN
USING is_enable::BOOLEAN;
 
create TABLE web_links(
link_id SERIAL PRIMARY key,
link_url VARCHAR(255) NOT NULL,
link_target VARCHAR(20)
);
 
create TABLE web_links(
link_id SERIAL PRIMARY key,
link_url VARCHAR(255) NOT NULL,
link_target VARCHAR(20)
);
 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 
select * FROM web_links;
 
select * FROM web_links;
 
ALTER TABLE web_links
ALTER COLUMN link_url TYPE varchar(255)
using link_url::varchar(255);
 
 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 

 
 
ALTER TABLE web_links
ALTER COLUMN link_url SET NOT NULL;
 
ALTER TABLE web_links
ALTER COLUMN link_url DROP NOT NULL;
 

 

 
INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');

select * FROM web_links;
 

TRUNCATE web_links;



ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);


 
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);

ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);

INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');

INSERT INTO web_links (link_url, link_target) values ('http://www.google.com', '_blank');
 
ALTER TABLE web_links
ADD COLUMN is_enable varchar(2);

ALTER TABLE web_links
ADD COLUMN is_enable varchar(2);

alter Table web_links
add check (is_enable in ('Y', 'N'));

alter Table web_links
add check (is_enable in ('Y', 'N'));

INSERT INTO web_links (link_url, link_target, is_enable) values ('http://www.df.com', '_blank', 'Y');

INSERT INTO web_links (link_url, link_target, is_enable) values ('http://www.df.com', '_blank', 'Y');
 
select * from web_links;

select * from web_links;

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

SELECT CONCAT(first_name, last_name) AS "ActorName" 
FROM actors;

SELECT CONCAT(first_name, last_name) AS "ActorName" 
FROM actors;

SELECT CONCAT(first_name, last_name) AS "Actor Name" 
FROM actors;

SELECT CONCAT(first_name, last_name) AS "Actor Name" 
FROM actors;

select 'hello' || 'world' as "newstring";

select 'hello' || 'world' as "newstring";

SELECT CONCAT_WS(',',first_name, last_name) AS "Actor Name" 
FROM actors;
 
SELECT CONCAT_WS(',',first_name, last_name) AS "Actor Name" 
FROM actors;

SELECT CONCAT_WS(',',first_name, last_name, date_of_birth) AS "Actor Name" 
FROM actors;

SELECT CONCAT_WS(',',first_name, last_name, date_of_birth) AS "Actor Name" 
FROM actors;

SELECT 
    release_date,
    TO_CHAR(release_date,'DD-MM-YYYY'),
    TO_CHAR(release_date,'Dy, Month, YYYY')
FROM movies;

SELECT 
    release_date,
    TO_CHAR(release_date,'DD-MM-YYYY'),
    TO_CHAR(release_date,'Dy, Month, YYYY')
FROM movies;

select * from pg_catalog.pg_tables;

select * from pg_catalog.pg_tables;

select * from pg_catalog.pg_tables where schemaname='movies';

select * from pg_catalog.pg_tables where schemaname='movies';

select table_name, column_name, data_type
from information_schema.columns
where table_name = 'moveis';
 
select table_name, column_name, data_type
from information_schema.columns
where table_name = 'moveis';

select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'hh:mi:ss');

select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'hh:mi:ss');
 
select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'HH:MI:SS');
 
select 
TO_CHAR(TIMESTAMP '2022-10-01 10:13:12', 'HH:MI:SS');
 
SELECT * FROM movies_revenues;
 
SELECT * FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9,9999')
FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9,9999')
FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9.9999')
FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 9.9999')
FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999.9999')
FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999.9999')
FROM movies_revenues;
 
SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;

SELECT TO_NUMBER('123.56', '99999');
 
SELECT TO_NUMBER('123.56', '99999');

SELECT TO_NUMBER('123.56', '999');

SELECT TO_NUMBER('123.56', '999');

SELECT TO_NUMBER('123.56', '99956');

SELECT TO_NUMBER('123.56', '99956');

SELECT TO_NUMBER('123.56', '99999');

SELECT TO_NUMBER('123.56', '99999');

SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999'
);

SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999'
);

SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999s'
);
 
SELECT TO_NUMBER(
    '10,625.78-',
    '99g999d999s'
);
 
SELECT TO_NUMBER(
    '$1,420.65',
    'L9g999'
);

SELECT TO_NUMBER(
    '$1,420.65',
    'L9g999'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999'
);
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999g34'
);

SELECT TO_NUMBER(
    '1,420.65',
    'L9g999g34'
);

SELECT TO_NUMBER(
    '1,420.65',
    'L9g999d34'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    'L9g999d34'
);

SELECT TO_NUMBER(
    '1,420.65',
    '9g999d34'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d34'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);

SELECT TO_NUMBER(
    '1,420.65',
    '9g999d'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d'
);

SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d99'
);

SELECT TO_NUMBER(
    '1,420.65',
    '9g999d66'
);

SELECT TO_NUMBER(
    '1,420.65',
    '9g999d66'
);
 
SELECT TO_NUMBER(
    '1,420.65',
    '9g999d688'
);

SELECT TO_NUMBER(
    '1,420.65',
    '9g999d688'
);

SELECT TO_DATE('2020/07/01','YYYY/MM/DD');

SELECT TO_DATE('2020/07/01','YYYY/MM/DD');

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;

SELECT revenues_international, 
TO_CHAR(revenues_international, '$ 999D9999')
FROM movies_revenues;

SELECT TO_DATE('022799','MMDDYY');

SELECT TO_DATE('022799','MMDDYY');

SELECT TO_DATE('033199','MMDDYY');
 
SELECT TO_DATE('033199','MMDDYY');
 
SELECT TO_DATE('March 03, 1993', 'Month DD, YYYY');

SELECT TO_DATE('March 03, 1993', 'Month DD, YYYY');

SELECT TO_DATE('March11, 1993', 'Month DD, YYYY');

SELECT TO_DATE('March11, 1993', 'Month DD, YYYY');

SELECT TO_DATE('March 11, 1993', 'Month DD, YYYY');

SELECT TO_DATE('March 11, 1993', 'Month DD, YYYY');

SELECT TO_DATE('2020/12/11','YYYY/MM/DD');

SELECT TO_DATE('2020/12/11','YYYY/MM/DD');

SELECT TO_DATE('2020/02/25','YYYY/MM/DD');
SELECT TO_DATE('2020/02/25','YYYY/MM/DD');

SELECT TO_CHAR(1234, '7,786.87');

SELECT TO_CHAR(1234, '7,786.87');

SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD');

SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD');

SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD HH-MI-SS');

SELECT TO_TIMESTAMP('2020-10-28 10:38:25', 'YYYY-MM-DD HH-MI-SS');

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

-- Composite type

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

CREATE TABLE users2 (
    user2_id SERIAL PRIMARY KEY,
    user2_name VARCHAR(50)
);
CREATE SEQUENCE user2_user2_id_seq START WITH 100 OWNED BY users2.user2_id;
ALTER TABLE users2 ALTER COLUMN user2_id SET DEFAULT nextval('users2_user2_id_seq');

INSERT INTO users2 (user2_name) VALUES ('ADAM');




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


--  Count all records
--  Count total number of movies
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


-- What is an INDEX

-- An index is a structured relation
-- An index help improve the access of data in our database
-- Indexed Tuples point to the table page where the tuple is stored
-- An index is a data structure that allows faster access to the underlying table so that specific tuples
-- can be found quickly. Here, "quickly" means faster than scanning the whole udnerlying table and analyzing every single tuple
-- Maitaining an index is a fundamental for having a good performance
-- Perfomance tuning is one of the most complex tasks in the daily job of database administrator
-- Adding indices may improve the speed of the data access but they add a COST to the data modification.
-- put them on table column or columns 
-- why not put an index on all columns
-- Too many indexes will result in slow insert / update / delete operators
-- PostgreSQL supports indexs with up to 32 columns
-- Two main basic index type
-- INDEX create an index on only values of a column  or columns
-- UNIQUE INDEX create an index on only UINQUE values of column or columns
/*CREATE INDEX index_name
ON table_name (col1, col2, ...)

CREATE UNIQUE INDEX index_name
ON table_name (col1, col2, ...)

CREATE INDEX index_name ON table_name [USING method]
(
    column_name [ASC | DESC] [NULLS {FIRST | LAST}],
    .....
);

-- try to keep the naming conventions unique and globally accessible
INDEX                   CREATE INDEX idx_table_name_column_name_col2
UNIQUE INDEX            CREATE INDEX idx_u_table_name_column_names


*/

-- Create an INDEX ON order_date on orders table
CREATE INDEX idex_orders_order_date ON orders (order_date);
CREATE INDEX idx_orders_ship_city ON orders (ship_city);

-- Create an index on multiple fields say orders -> customer_id, order_id

CREATE INDEX idx_orders_customer_id_order_id ON orders (customer_id, order_id);
/* It is important to note that, when creating multi-column indexes, you should always place the most 
selective columns first. PostgreSQL will consider a multi-column index from the first column onward, so if the first columns are the most
selective, the index access method will be the cheapest
- order of the field
- how you are using in WHERE clauses etc
*/
-- Using pgadmin to create an index
-- shippers -> compnay_name

--  How to create unique indexes 
-- Primary key and indexes
-- 1. Normally the primary key of table are kept with a UNIQUE INDEX
-- 2. If you define a UNIQUE index for two or more columns, the combined values in these columns cannot be duplicated in multiple rows. 

-- Lets create a UNIQUE index on products table on product_id
CREATE UNIQUE INDEX idx_u_products_product_id ON products (product_id); 
-- Lets create a UNIQUE  index on employees table on employee_id
CREATE UNIQUE INDEX idx_u_employees_employee_id ON employees (employee_id);

-- How about UNIQUE on multiple columns
CREATE UNIQUE INDEX idx_u_orders_order_id_customer_id ON orders (order_id, customer_id);

CREATE UNIQUE INDEX idx_u_employees_employee_id_hire_date ON employees (employee_id, hire_date);


-- List all indexes 
-- pg_indexes
-- all indices
SELECT * 
FROM pg_indexes;

SELECT *
FROM pg_indexes
WHERE schemaname = 'public'
ORDER BY 
    tablename,
    indexname;

-- indexes of a table
SELECT *
FROM pg_indexes
WHERE tablename = 'orders'
ORDER BY 
    tablename,
    indexname;

-- Size of the table index
-- Lets create an index on supplier -> region
SELECT
pg_indexes_size('orders');

CREATE INDEX idx_suppliers_region ON suppliers (region);

CREATE UNIQUE INDEX idx_u_suppliers_supplier_id ON suppliers (supplier_id);


-- List counts for all indexes
-- Adding indices may improve the speed of the data access but they add a COST to the data modification.
-- Therefore it is important to understand if the index is used
-- pg_stat_all_indexes
-- all 


SELECT
* FROM
pg_stat_all_indexes;
WHERE schemaname = 'public'
ORDER BY relname, indexrelname;

-- How to drop a schema;
/* DROP INDEX [ CONCURRENTLY]
[IF EXISTS] index_name
[CASCADE | RESTRICT]


-- CASCADE, if the index has dependent objects, you use CASCADE option to automatically drop these objects and all objects that depends on these objects
-- RESTRICT, The RESTRICT option instructs PostgreSQL to refuse to drop the index if any objects depend on it.
-- The drop index use restrict by default.
-- CONCURRENTLY, When you execute the drop index statement, PostgreSQL acquires an exclusive lock on the table and block other access untill the ADD
-- index removal completes
*/
DROP INDEX idx_suppliers_region;


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
