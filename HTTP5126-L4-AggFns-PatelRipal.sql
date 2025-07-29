-- LAB 4 AGGREGATE FUNCTIONS
-- Put your answers on the lines after each letter. E.g. your query for question 1A should go on line 6; your query for question 1B should go on line 8...

--  1 
 A 
SELECT MIN(price) FROM stock_item;

B 
SELECT MAX(price) FROM stock_item;

 C 
SELECT AVG(price) FROM stock_item;

 D 
SELECT SUM(price) FROM stock_item;


--  2
 A 
SELECT role, COUNT(*) FROM `employee` GROUP BY role;

 B 
SELECT 'Mammals' AS category, COUNT(*) AS item_count FROM stock_item WHERE category <> 'piscine';

 C 
SELECT category, AVG(price) AS average_price FROM stock_item WHERE inventory > 0 GROUP BY category; 



--  3
 A  
SELECT category AS "Species", SUM(inventory) AS "In Stock" FROM stock_item GROUP BY category ORDER BY category;

 B  
SELECT category, SUM(inventory), AVG(price) FROM stock_item GROUP BY category HAVING SUM(inventory) < 100 AND AVG(price) < 100;


--  4

A SELECT CONCAT('$', price * inventory) AS 'Potential Earnings',item AS 'Product', CONCAT('$', price) AS 'Price', inventory AS 'Stock Remaining', category AS 'Species' FROM stock_item ORDER BY price * inventory DESC LIMIT 20;