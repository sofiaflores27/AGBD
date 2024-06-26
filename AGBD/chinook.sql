SELECT name,Composer,Milliseconds from tracks

SELECT FirstName,LastName,Address,City from customers

SELECT name,Milliseconds from tracks 
WHERE Composer is NULL AND Milliseconds > 2900000

SELECT LastName,FirstName,Company FROM customers
WHERE company is NOT NULL

SELECT DISTINCT BillingCity FROM invoices
WHERE BillingState is NOT NULL 
ORDER by BillingCity DESC

SELECT Title FROM albums
WHERE Title LIKE "%OF%"
ORDER by Title ASC, Title

SELECT t.name, g.name FROM tracks t
JOIN genres g ON t.GenreId - g.GenreID

SELECT t.name, a.Title FROM tracks t
JOIN albums a ON t.AlbumId - a.AlbumId
ORDER by Title DESC

SELECT country_name, region_name FROM countries t
JOIN regions c ON t.region_id = c.region_id 
ORDER BY region_name



