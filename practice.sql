-- Active: 1666183948709@@127.0.0.1@5432@mydata
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


