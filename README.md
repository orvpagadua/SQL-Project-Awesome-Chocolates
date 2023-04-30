# SQL-Project-Awesome-Chocolates

 The Database (awesome chocolates.sql) contains 4 tables: `geo`, `people`, `products` and `sales`

## SQL Queries

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

### CALCULATED QUERIES

```
SELECT SaleDate, Amount, Boxes, Amount/Boxes 
FROM sales
LIMIT 10
```

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



## INTERMEDIATE PROBLEMS 
👉 You need to combine various concepts covered in the video to solve these

1. Print details of shipments (sales) where amounts are > 2,000 and boxes are <100? 
2. How many shipments (sales) each of the sales persons had in the month of January 2022?
3. Which product sells more boxes? Milk Bars or Eclairs?
4. Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?
5. Which shipments had under 100 customers & under 100 boxes? Did any of them occur on Wednesday?

## HARD PROBLEMS 
👉 These require concepts not covered in the video

1. What are the names of salespersons who had at least one shipment (sale) in the first 7 days of January 2022?
2. Which salespersons did not make any shipments in the first 7 days of January 2022?
3. How many times we shipped more than 1,000 boxes in each month?
4. Did we ship at least one box of ‘After Nines’ to ‘New Zealand’ on all the months?
5. India or Australia? Who buys more chocolate boxes on a monthly basis?
