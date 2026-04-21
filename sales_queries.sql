-- 1) Display all sales records
SELECT *
FROM sales_data;

-- 2) Calculate total sales revenue
SELECT SUM(quantity * price) AS total_sales_revenue
FROM sales_data;

-- 3) Identify the top-selling product by quantity
SELECT product, SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY product
ORDER BY total_quantity DESC
LIMIT 1;

-- 4) Calculate total revenue generated in each city
SELECT city, SUM(quantity * price) AS city_revenue
FROM sales_data
GROUP BY city;

-- 5) Calculate category-wise revenue
SELECT category, SUM(quantity * price) AS category_revenue
FROM sales_data
GROUP BY category;

-- 6) Identify the highest-value order
SELECT *
FROM sales_data
ORDER BY (quantity * price) DESC
LIMIT 1;

-- 7) Calculate the average product price
SELECT AVG(price) AS average_product_price
FROM sales_data;
