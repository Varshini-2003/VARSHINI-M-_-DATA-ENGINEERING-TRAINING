create database pro;
use pro;
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL,
    Supplier VARCHAR(100) NOT NULL
);


INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier)
VALUES 
INSERT INTO ProductTable (ProductID, ProductName, Category, Price, StockQuantity, Supplier) VALUES
(1, 'Laptop', 'Electronics', 70000, 50, 'TechMart'),
(2, 'Office Chair', 'Furniture', 5000, 100, 'HomeComfort'),
(3, 'Smartwatch', 'Electronics', 15000, 200, 'GadgetHub'),
(4, 'Desk Lamp', 'Lighting', 1200, 300, 'BrightLife'),
(5, 'Wireless Mouse', 'Electronics', 1500, 250, 'GadgetHub');
--1. CRUD Operations:
--1 Add a new product:
--Insert a product named "Gaming Keyboard" under the "Electronics" category, priced at 3500, with 150 units in stock, supplied by "TechMart".

INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier)
VALUES (6, 'Gaming Keyboard', 'Electronics', 3500, 150, 'TechMart');

--2 Update product price:
UPDATE Product
SET Price = Price * 1.10
WHERE Category = 'Electronics';

--3 Delete a product:
DELETE FROM Product
WHERE ProductID = 4;

--4 Read all products sorted by Price (descending):

SELECT * FROM Product
ORDER BY Price DESC;


--2. Sorting and Filtering
--5 Sort by StockQuantity (ascending):
SELECT * FROM Product
ORDER BY StockQuantity ASC;


--6 Filter by category (Electronics):
SELECT * FROM Product
WHERE Category = 'Electronics';

--7 Filter with AND condition (Electronics & Price > 5000):
SELECT * FROM Product
WHERE Category = 'Electronics' AND Price > 5000;

--8 Filter with OR condition (Electronics or Price < 2000):
SELECT * FROM Product
WHERE Category = 'Electronics' OR Price < 2000;

--3. Aggregation and Grouping
--9 Total stock value:

SELECT SUM(Price * StockQuantity) AS TotalStockValue
FROM Product;

--10 Average price by category:

SELECT Category, AVG(Price) AS AveragePrice
FROM Product
GROUP BY Category;

--11 Total products by supplier (GadgetHub):

SELECT COUNT(*) AS ProductCount
FROM Product
WHERE Supplier = 'GadgetHub';

--4. Conditional and Pattern Matching
--12 Products with "Wireless" in name:

SELECT * FROM Product
WHERE ProductName LIKE '%Wireless%';

--13 Products from TechMart or GadgetHub:
SELECT * FROM Product
WHERE Supplier IN ('TechMart', 'GadgetHub');

--14 Products priced between 1000 and 20000:
SELECT * FROM Product
WHERE Price BETWEEN 1000 AND 20000;


--5. Advanced Queries
--15 Products with stock above average:
SELECT * FROM Product
WHERE StockQuantity > (SELECT AVG(StockQuantity) FROM Product);

--16 Top 3 expensive products:
SELECT TOP 3 * FROM Product
ORDER BY Price DESC;

--17 Duplicate supplier names:
SELECT Supplier, COUNT(*) AS Count
FROM Product
GROUP BY Supplier
HAVING COUNT(*) > 1;


--18 Product summary (category-wise):

SELECT Category, COUNT(*) AS ProductCount, SUM(Price * StockQuantity) AS TotalStockValue
FROM Product
GROUP BY Category;

--6. Join and Subqueries
--19 Supplier with most products:
SELECT TOP 1 Supplier, COUNT(*) AS ProductCount
FROM Product
GROUP BY Supplier
ORDER BY ProductCount DESC;

--20 Most expensive product per category:
SELECT p.*
FROM Product p
JOIN (
    SELECT Category, MAX(Price) AS MaxPrice
    FROM Product
    GROUP BY Category
) AS maxp
ON p.Category = maxp.Category AND p.Price = maxp.MaxPrice;

