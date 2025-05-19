create database book;
use book;


CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Price INT,
    PublishedYear INT,
    Stock INT
);

INSERT INTO Book (BookID, Title, Author, Genre, Price, PublishedYear, Stock)
VALUES 
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 300, 1988, 50),
(2, 'Sapiens', 'Yuval Noah Harari', 'Non-Fiction', 500, 2011, 30),
(3, 'Atomic Habits', 'James Clear', 'Self-Help', 400, 2018, 25),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Personal Finance', 350, 1997, 20),
(5, 'The Lean Startup', 'Eric Ries', 'Business', 450, 2011, 15);


-- CRUD Operations
--1. Add a new book:
INSERT INTO Book (BookID,Title, Author, Genre, Price, PublishedYear, Stock)
VALUES (6,'Deep Work', 'Cal Newport', 'Self-Help', 420, 2016, 35);

--2. Update book price:
UPDATE Book
SET Price = Price + 50
WHERE Genre = 'Self-Help';

--3. Delete a book:
DELETE FROM Book
WHERE BookID = 4;

--4. Read all books sorted by Title:
SELECT * FROM Book
ORDER BY Title ASC;

-- Sorting and Filtering

--5. Sort by price (descending):
SELECT * FROM Book
ORDER BY Price DESC;

--6. Filter by genre (Fiction):
SELECT * FROM Book
WHERE Genre = 'Fiction';

--7. Filter with AND condition:
SELECT * FROM Book
WHERE Genre = 'Self-Help' AND Price > 400;

--8. Filter with OR condition:
SELECT * FROM Book
WHERE Genre = 'Fiction' OR PublishedYear > 2000;

--Aggregation and Grouping
--9. Total stock value:
SELECT SUM(Price * Stock) AS TotalStockValue
FROM Book;

--10. Average price by genre:
SELECT Genre, AVG(Price) AS AveragePrice
FROM Book
GROUP BY Genre;

--11. Total books by Paulo Coelho:
SELECT COUNT(*) AS TotalBooks
FROM Book
WHERE Author = 'Paulo Coelho';

--Conditional and Pattern Matching
--12. Titles containing "The":
SELECT * FROM Book
WHERE Title LIKE '%The%';

--13. Yuval Noah Harari books priced below 600:
SELECT * FROM Book
WHERE Author = 'Yuval Noah Harari' AND Price < 600;

--14. Books priced between 300 and 500:
SELECT * FROM Book
WHERE Price BETWEEN 300 AND 500;

--Advanced Queries
--15. Top 3 most expensive books:
SELECT TOP 3 * FROM Book
ORDER BY Price DESC;

--16. Books published before 2000:
SELECT * FROM Book
WHERE PublishedYear < 2000;

--17. Total number of books in each Genre:
SELECT Genre, COUNT(*) AS TotalBooks
FROM Book
GROUP BY Genre;

--18. Duplicate titles:
SELECT Title, COUNT(*) AS TitleCount
FROM Book
GROUP BY Title
HAVING COUNT(*) > 1;

--Join and Subqueries (if related tables are present)
--19. Author with the most books:
SELECT TOP 1 Author, COUNT(*) AS BookCount
FROM Book
GROUP BY Author
ORDER BY BookCount DESC;

--20. Oldest book by genre:
SELECT Genre, MIN(PublishedYear) AS OldestYear
FROM Book
GROUP BY Genre;
