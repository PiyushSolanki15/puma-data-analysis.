create database puma;
use puma;
select* from puma;
show tables;
RENAME TABLE `puma (2)` TO puma;

SELECT product, category, price, quantity
FROM puma;

SELECT COUNT(*) AS total_orders
FROM puma;

SELECT product, MAX(price) AS highest_price
FROM puma
GROUP BY product
ORDER BY highest_price DESC
LIMIT 1;

SELECT city, SUM(total_amount) AS total_sales
FROM puma
GROUP BY city
ORDER BY total_sales DESC;

SELECT AVG(rating) AS avg_rating
FROM puma;

SELECT *
FROM puma
WHERE rating > 5;

SELECT *
FROM puma
WHERE price < 0 OR quantity < 0;

SELECT category, COUNT(*) AS total_products
FROM puma
GROUP BY category;

SELECT sales_channel, SUM(total_amount) AS sales
FROM puma
GROUP BY sales_channel;

SELECT customer_id, SUM(total_amount) AS total_spent
FROM puma
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

SELECT SUM(total_amount) AS revenue
FROM puma;
