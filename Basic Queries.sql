SHOW TABLES;

DESC geo;

SELECT *
FROM sales
LIMIT 10

SELECT SaleDate, Amount, Customers 
FROM sales
LIMIT 10


SELECT SaleDate, Amount, Boxes, Amount/Boxes 
FROM sales
LIMIT 10



SELECT SaleDate, Amount, Boxes, Amount/Boxes AS 'Amount per box'
FROM sales
LIMIT 10


SELECT *
FROM sales
WHERE Amount >10000
LIMIT 10


SELECT *
FROM sales
WHERE Amount >10000
ORDER BY Amount
LIMIT 10

SELECT *
FROM sales
WHERE GeoID = 'G1'
ORDER BY PID, Amount DESC;


SELECT *
FROM sales
WHERE Amount > 10000 AND SaleDate >= '2022-01-01'
ORDER BY Amount DESC
LIMIT 10;


SELECT SaleDate, Amount 
FROM sales
WHERE Amount > 10000 AND YEAR (SaleDate) = '2022'
ORDER BY Amount DESC 
LIMIT 10


SELECT *
FROM sales
WHERE Boxes > 0 AND Boxes <= 50
LIMIT 10


SELECT *
FROM sales
WHERE Boxes BETWEEN 0 AND 50
LIMIT 10


SELECT SaleDate, Amount, Boxes, WEEKDAY(SaleDate) AS 'Day of Week'  
FROM sales
WHERE WEEKDAY(SaleDate)
LIMIT 10;


SELECT *
FROM people 
WHERE team IN ('Delish', 'Jucies')
LIMIT 10;


SELECT *
FROM people 
WHERE Salesperson LIKE 'B%'
LIMIT 10

SELECT *
FROM people 
WHERE Salesperson LIKE '%B%'
LIMIT 10


SELECT SaleDate, Amount,
	CASE WHEN Amount < 1000 THEN 'Under 1k'
		WHEN Amount < 5000 THEN 'Under 5k'
		WHEN Amount < 10000 THEN 'Under 10k'
		ELSE '10k or more'
		END AS 'Amount Category'
FROM sales;


