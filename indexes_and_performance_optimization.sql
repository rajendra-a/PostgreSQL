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

