CONSIGNAS 1
SELECT Name,Composer,Milliseconds FROM tracks.
SELECT FirstName,LastName,Address,City FROM customers.
SELECT name, Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds > 2900000.
SELECT LastName, FirstName, Company FROM customers WHERE Company IS NOT NULL.
SELECT DISTINCT BillingCity FROM invoices WHERE BillingState IS NULL ORDER BY BillingCity DESC.
SELECT Title FROM albums WHERE Title LIKE '%OF%' ORDER BY Title ASC.
SELECT t.name, g.name from tracks t JOIN genres g ON t.GenreId = g.GenreId.
SELECT a.Title, t.name from albums a JOIN tracks t ON a.AlbumId = t.AlbumId ORDER BY a.Title DESC.
CONSIGNAS 2
SELECT FirstName, LastName FROM employees ORDER BY FirstName, LastName ASC.
SELECT Title FROM employees  WHERE ReportsTo IS NULL.
SELECT total, BillingAddress FROM invoices order by total DESC limit 5.
SELECT t.name, t.Milliseconds FROM tracks t JOIN albums a ON t.AlbumId = a.AlbumId 
WHERE a.Title LIKE "%Big Ones%" ORDER BY t.Milliseconds DESC.
SELECT COUNT(t.name) as cantCancion, g.name FROM genres g JOIN tracks t ON g.GenreId = t.GenreId
GROUP BY g.GenreId.