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

