SELECT s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID 
FROM sales s
JOIN people p ON p.SPID = s.SPID; 



SELECT s.SaleDate, s.Amount, pr.Product 
FROM sales s  
LEFT JOIN products pr ON pr.PID  = s.PID;


SELECT s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team  
FROM sales s
JOIN people p ON p.SPID = s.SPID
LEFT JOIN products pr ON pr.PID  = s.PID;



SELECT s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team  
FROM sales s
JOIN people p ON p.SPID = s.SPID
LEFT JOIN products pr ON pr.PID  = s.PID
WHERE s.Amount < 500;


SELECT s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team  
FROM sales s
JOIN people p ON p.SPID = s.SPID
LEFT JOIN products pr ON pr.PID  = s.PID
WHERE s.Amount < 500
AND p.Team = 'Delish';



SELECT s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team  
FROM sales s
JOIN people p ON p.SPID = s.SPID
LEFT JOIN products pr ON pr.PID  = s.PID
WHERE s.Amount < 500
AND p.Team = '';


SELECT s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team, g.Geo  
FROM sales s
JOIN people p ON p.SPID = s.SPID
LEFT JOIN products pr ON pr.PID  = s.PID
JOIN geo g ON g.GeoID = s.GeoID 
WHERE s.Amount < 500
AND p.Team = ''
AND g.Geo IN ('New Zealand','India');


SELECT GeoID, SUM(Amount) 
FROM sales s
GROUP BY GeoID; 



SELECT g.Geo, SUM(Amount), AVG(Amount), SUM(Boxes)
FROM sales s
JOIN geo g ON g.GeoID = s.GeoID 
GROUP BY g.Geo; 


SELECT pr.Category, p.Team, SUM(Boxes), SUM(Amount)  
FROM sales s 
JOIN people p ON p.SPID = s.SPID 
JOIN products pr ON pr.PID =s.PID
GROUP BY pr.Category, p.Team;


SELECT pr.Category, p.Team, SUM(Boxes), SUM(Amount)  
FROM sales s 
JOIN people p ON p.SPID = s.SPID 
JOIN products pr ON pr.PID =s.PID
WHERE p.Team <>''
GROUP BY pr.Category, p.Team
ORDER BY pr.Category, p.Team;

SELECT pr.Product, SUM(s.Amount) AS 'Total Amount'
FROM sales s
JOIN products pr ON pr.PID = s.PID
GROUP BY pr.Product
ORDER BY 'Total Amount' DESC
LIMIT 10; 

