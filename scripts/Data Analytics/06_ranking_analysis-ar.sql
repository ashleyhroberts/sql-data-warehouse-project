/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/

-- Which 5 products Generating the Highest Revenue?

-- Simple Ranking

SELECT TOP 5
	product_name,
	SUM(sales_amount) AS total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
	ON s.product_key = p.product_key
GROUP BY product_name
ORDER BY total_revenue DESC

-- Complex but Flexible Ranking Using Window Functions

SELECT *
FROM (
	SELECT
		p.product_name,
		SUM(sales_amount) AS total_revenue,
		RANK() OVER (ORDER BY SUM(sales_amount) DESC) AS product_rank
	FROM gold.fact_sales s
	LEFT JOIN gold.dim_products p
		ON s.product_key = p.product_key
	GROUP BY p.product_name
	)t 
WHERE product_rank < 6

-- What are the 5 worst-performing products in terms of sales?
SELECT TOP 5
	product_name,
	SUM(sales_amount) AS total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
	ON s.product_key = p.product_key
GROUP BY product_name
ORDER BY total_revenue 

-- Find the top 10 customers who have generated the highest revenue
SELECT TOP 10
	c.customer_key,
	c.first_name,
	c.last_name,
	SUM(sales_amount) AS total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c
	ON s.customer_key = c.customer_key
GROUP BY 
	c.customer_key,
	c.first_name,
	c.last_name
ORDER BY total_revenue DESC

-- The 3 customers with the fewest orders placed
SELECT TOP 3
	c.customer_key,
	c.first_name,
	c.last_name,
	COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c
	ON s.customer_key = c.customer_key
GROUP BY 
	c.customer_key,
	c.first_name,
	c.last_name
ORDER BY total_orders 

-- What is the best-selling category in each country by quantity and revenue?
SELECT * 
FROM (
	SELECT
		country,
		category,
		SUM(sales_amount) AS revenue,
		SUM(quantity) AS units_sold,
		RANK() OVER (PARTITION BY country ORDER BY SUM(quantity) DESC) AS units_sold_rank,
		RANK() OVER (PARTITION BY country ORDER BY SUM(sales_amount) DESC) AS revenue_rank
	FROM gold.fact_sales s
	LEFT JOIN gold.dim_customers c
		ON s.customer_key = c.customer_key
	LEFT JOIN gold.dim_products p
		ON s.product_key = s.product_key
	WHERE category IS NOT NULL
	GROUP BY country, category
	)t
WHERE units_sold_rank = 1 AND revenue_rank = 1
