
-- Register DataFrame as a temporary view
CREATE OR REPLACE TEMP VIEW customers AS
SELECT * FROM VALUES
(1, 'Ravi', 'Hyderabad', 25),
(2, NULL, 'Chennai', 32),
(NULL, 'Arun', 'Hyderabad', 28),
(4, 'Meena', NULL, 30),
(4, 'Meena', NULL, 30),
(5, 'John', 'Bangalore', -5)
AS customers(customer_id, name, city, age);
-- Check full data
SELECT * FROM customers;

-- Find null values
SELECT * FROM customers
WHERE customer_id IS NULL OR name IS NULL OR city IS NULL;

-- Find duplicates
SELECT customer_id, name, city, age, COUNT(*) as cnt
FROM customers
GROUP BY customer_id, name, city, age
HAVING COUNT(*) > 1;

-- Find invalid ages
SELECT * FROM customers
WHERE age <= 0;
CREATE OR REPLACE TEMP VIEW cleaned_customers AS
SELECT DISTINCT
    customer_id,
    COALESCE(name, 'Unknown') AS name,
    COALESCE(city, 'Unknown') AS city,
    age
FROM customers
WHERE customer_id IS NOT NULL
  AND age > 0;
-- Count before cleaning
SELECT COUNT(*) AS before_count FROM customers;

-- Count after cleaning
SELECT COUNT(*) AS after_count FROM cleaned_customers;

-- View cleaned data
SELECT * FROM cleaned_customers;
SELECT city, COUNT(*) AS total_customers
FROM cleaned_customers
GROUP BY city;
