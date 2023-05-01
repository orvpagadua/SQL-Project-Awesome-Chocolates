# SQL-Project-Awesome-Chocolates

 The Database (awesome chocolates.sql) contains 4 tables: `geo`, `people`, `products` and `sales`

## Basic SQL Queries

List all the Tables in the Database
```
SHOW TABLES;
```
Understand the values in the Table
```
DESC geo;
```
Show data from sales table
```
SELECT *
FROM sales
LIMIT 10
```
Show only selected columns
```
SELECT SaleDate, Amount, Customers 
FROM sales
LIMIT 10
```

#### CALCULATED QUERIES
Column Calculation
```
SELECT SaleDate, Amount, Boxes, Amount/Boxes 
FROM sales
LIMIT 10
```
Renaming Column Calculation
```
SELECT SaleDate, Amount, Boxes, Amount/Boxes AS 'Amount per box'
FROM sales
LIMIT 10
```
Imposing Conditions on the query
```
SELECT *
FROM sales
WHERE Amount >10000
LIMIT 10
```
Ordering query results
```
SELECT *
FROM sales
WHERE Amount >10000
ORDER BY Amount
LIMIT 10
```
Ordering query results with condition
```
SELECT *
FROM sales
WHERE GeoID = 'G1'
ORDER BY PID, Amount DESC;
LIMIT 10
```

#### WHERE CLAUSE USES
Filtering Query with conditions
```
SELECT *
FROM sales
WHERE Amount > 10000 AND SaleDate >= '2022-01-01'
ORDER BY Amount DESC;
LIMIT 10
```
Year of Sale Date
```
SELECT SaleDate, Amount 
FROM sales
WHERE Amount > 10000 AND YEAR (SaleDate) = '2022'
ORDER BY Amount DESC 
LIMIT 10
```
Number of Boxes is 0-50
```
SELECT *
FROM sales
WHERE Boxes > 0 AND Boxes <= 50
LIMIT 10
```

```
SELECT *
FROM sales
WHERE Boxes BETWEEN 0 AND 50
LIMIT 10
```

Shipments on Fridays
```
SELECT SaleDate, Amount, Boxes, WEEKDAY(SaleDate) AS 'Day of Week'  
FROM sales
WHERE WEEKDAY(SaleDate);
LIMIT 10
```

#### Using Multiple Tables

Clauses
```
SELECT *
FROM people 
WHERE team IN ('Delish', 'Jucies');
LIMIT 10
```

### Pattern Matching
Salesperson names that start with the letter `B`
```
SELECT *
FROM people 
WHERE Salesperson LIKE 'B%'
LIMIT 10
```
Salesperson names that `CONTAINS` with the letter `B`
```
SELECT *
FROM people 
WHERE Salesperson LIKE '%B%'
LIMIT 10
```
Creating Columns with CASE Condition
```
SELECT SaleDate, Amount,
	CASE WHEN Amount < 1000 THEN 'Under 1k'
		WHEN Amount < 5000 THEN 'Under 5k'
		WHEN Amount < 10000 THEN 'Under 10k'
		ELSE '10k or more'
		END AS 'Amount Category'
FROM sales;
```
## Intermediate Queries
Sales Data with the Persons Name
```
SELECT s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID 
FROM sales s
JOIN people p ON p.SPID = s.SPID; 
```

Left Join on Products Table
```
```






## INTERMEDIATE PROBLEMS 

1. Print details of shipments (sales) where amounts are > 2,000 and boxes are <100? 
2. How many shipments (sales) each of the sales persons had in the month of January 2022?
3. Which product sells more boxes? Milk Bars or Eclairs?
4. Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?
5. Which shipments had under 100 customers & under 100 boxes? Did any of them occur on Wednesday?

## HARD PROBLEMS 

1. What are the names of salespersons who had at least one shipment (sale) in the first 7 days of January 2022?
2. Which salespersons did not make any shipments in the first 7 days of January 2022?
3. How many times we shipped more than 1,000 boxes in each month?
4. Did we ship at least one box of ‘After Nines’ to ‘New Zealand’ on all the months?
5. India or Australia? Who buys more chocolate boxes on a monthly basis?
