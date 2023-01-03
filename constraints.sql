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
