CREATE TABLE courses (
	course_id SERIAL PRIMARY KEY,
	course_name VARCHAR(100) NOT NULL,
	course_level VARCHAR(100) NOT NULL,
	sold_units INT NOT NUL	
);

SELECT * FROM courses;

INSERT INTO courses (course_name, course_level, sold_units)values
('Machine learning with Python','Premium',100),
('Data Science Bootcamp', 'Premium', 50),
('Introduction to Python', 'Basic', 200),
('Understanding MongoDB', 'Premium', 100),
('Algorithm Design in Python', 'Premium', 200);

SELECT * FROM courses;

-- Lets use ROLLUP	

SELECT 
	course_level,
	course_name,
	SUM(sold_units) AS "Total sold"
FROM 
	courses 
GROUP BY 
	ROLLUP(course_level, course_name)
ORDER BY 
	course_level, course_name;
	
-- Lets create a test table of inventory items
CREATE TABLE inventory (
	inventory_id SERIAL PRIMARY KEY,
	category VARCHAR(100) NOT NULL, 
	sub_category VARCHAR(100) NOT NULL,
	product VARCHAR(100) NOT NU;;, 
	quantity INT
);


-- Lets insert some sample data

INSERT INTO inventory (category, sub_category, product, quantity) VALUES
('Furniture', 'Chair', 'Black', 10),
('Furniture', 'Chair', 'Brown', 10),
('Furniture', 'Desk', 'Blue', 10),
('Equipment', 'Computer', 'Mac', 5),
('Equipment', 'Computer', 'PC',5),
('Equipment', 'Monitor', 'Dell', 10);



SELECT * FROM inventory;


-- Lets group the data by category and sub_category. i.e.product is broken down by category
-- and sub_category

SELECT 
	category,
	sub_category,
	SUM(quantity) AS "Quantity"
FROM 
	inventory
GROUP BY 
	category, sub_category
ORDER BY
	category,
	sub_category
	
-- What if we want to see the SUBTOTAL of each category and a final total?
-- Lets do group sets on category and sub category using ROLLUP

SELECT 
	category,
	sub_category,
	SUM(quantity) AS "Quantity"
FROM 
	inventory
GROUP BY 
	ROLLUP(category, sub_category)
ORDER BY
	category,
	sub_category

-- Using GROUPING with ROLLUP
-- ##########################
-- Cab we workout a plan for NULL values
-- We will use GROUPING function with ROLLUP
-- 1.GROUPING is a special aggregate function that works in conjuction with ROLLUP function 
-- 2.GROUPING return 0 or 1
-- 3.The function return 0 if it is not a subtotal row for given column_name
-- Lets organize our data with some CASE condition to grouping  = 1 and some cute labels too!

SELECT 
	category,
	sub_category,
	SUM(quantity) AS "Quantity",
	GROUPING(category) AS "Category Grouping",
	GROUPING(sub_category) AS "Sub Category Grouping"
FROM 
	inventory
GROUP BY
	ROLLUP(category, sub_category)
ORDER BY
	category,
	sub_category
	
-- We can make it even more pretty by handling both 0 or 1 output of grouping
-- category, subcategory, quantity, subtotal/total
SELECT 
		COALESCE(category,'') AS "Category",
		COALESCE(sub_category,'') AS "SubCategory",
		SUM(quantity) AS "Quantity",
		CASE
			WHEN GROUPING(category) = 1 THEN 'Grand Total' Else ''
		END as "Subtotal/Total"
FROM inventory
GROUP BY 
	ROLLUP(category, sub_category)
ORDER BY 
	category,
	sub_category
	

-- category, sub category, quantity
Equipment
	subtotal
Grand Total
	
SELECT
	CASE
		WHEN GROUPING(category) = 1 THEN 'GRAND TOTAL'
		WHEN GROUPING(sub_category) = 1 THEN 'SUBTOTAL===>'
		ELSE
			COALESCE('category','')
	END AS "Category",
	COALESCE(sub_category, '') AS "Sub Category",
	SUM(quantity) as "Quantity"
FROM inventory
GROUP BY 
	ROLLUP(category, sub_category)
ORDER BY
	category,
	sub_category
	
