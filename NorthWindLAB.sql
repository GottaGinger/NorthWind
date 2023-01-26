SELECT * FROM customers;
SELECT DISTINCT * FROM customers;
SELECT * FROM customers WHERE CustomerID LIKE "BL%";
SELECT * FROM orders ORDER BY OrderID LIMIT 100;
SELECT * FROM customers WHERE PostalCode IN ("1010", "3012", "12209", "05023");
SELECT * FROM orders WHERE ShipRegion IS NOT null;
SELECT * FROM customers ORDER BY Country, City;
INSERT into customers (ContactName) VALUES ("Mike");
UPDATE orders SET ShipRegion = "EuroZone" WHERE ShipCountry = "France";
DELETE FROM `order details` WHERE Quantity = '1';
USE northwind;
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM `order details`;
SELECT AVG(quantity), MAX(quantity), MIN(quantity) FROM `order details` GROUP BY OrderId;
SELECT CustomerID FROM orders WHERE OrderID = "10290";
SELECT * 
	FROM customers  
	JOIN orders
    ON customers.CustomerID = orders.CustomerID;
SELECT * 
	FROM customers
    LEFT JOIN orders
    ON customers.CustomerID = orders.CustomerID;
SELECT * 
	FROM customers
    RIGHT JOIN orders
    ON customers.CustomerID = orders.CustomerID;
SELECT *
	FROM customers
    JOIN orders
    ON orders.ShipCity = orders.ShipCountry
    WHERE ShipCity = "London";
    
SELECT orders.ShipName
FROM orders
LEFT JOIN ‘order details’ ON orders.OrderID=‘order_details’.OrderID
JOIN products ON ‘order_details’.ProductID=products.ProductID
WHERE products.Discontinued=1;
    
SELECT *
	FROM employees 
    WHERE FirstName
    ORDER BY ReportsTo = Null;
SELECT *
	FROM employees 
    WHERE FirstName
    ORDER BY ReportsTo = "Andrew";
    
    


    
