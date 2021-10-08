-- Artist Table
-- Problem 1
INSERT INTO artist (name)
VALUES ('Radiohead'), ('Lady Gaga'), ('Mumford and Sons');
-- Problem 2
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
-- Employee Table
-- Problem 1
SELECT first_name, last_name FROM employee where city = 'Calgary';
-- Problem 2
SELECT * FROM employee WHERE reports_to IN 
(SELECT employee_id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards');
-- Problem 3
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';
-- Invoice Table
-- Problem 1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
-- Problem 2
SELECT MAX(total) FROM invoice;
-- Problem 3
SELECT MIN(total) FROM invoice;
-- Problem 4
SELECT * FROM invoice WHERE total > 5;
-- Problem 5
SELECT COUNT(*) FROM invoice WHERE total < 5;
-- Problem 6
SELECT SUM(total) FROM invoice;
-- Join Queries
-- Problem 1
SELECT * 
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > .99;
-- Problem 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;
-- Problem 3
SELECT c.first_name "Customer's First Name", c.last_name "Customer's Last Name", e.first_name "Support Rep's First Name", e.last_name "Support Rep's Last Name"
FROM employee e
JOIN customer c ON e.employee_id = c.customer_id; 
-- Problem 4
SELECT al.title "Album Title", ar.name "Artist Name"
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;
-- Extra Credit
-- Artist Table
-- Problem 1
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
-- Problem 2
SELECT * FROM artist WHERE name LIKE 'Black%';
-- Problem 3
SELECT * FROM artist WHERE name LIKE '%Black%';
-- Employee Table
-- Problem 1
SELECT MAX(birth_date) FROM employee;
-- Problem 2
SELECT MIN(birth_date) FROM employee;
-- Invoice Table
-- Problem 1
SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');
-- Problem 2
SELECT AVG(total) FROM invoice;
-- More Join Queries
-- Problem 1
SELECT pt.track_id 
FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';
-- Problem 2
SELECT t.name "Track Name"
FROM track t
JOIN playlist_track p ON p.track_id = t.track_id
WHERE p.playlist_id = 5;
-- Problem 3
SELECT t.name "Track Name", p.name "Playlist Name"
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;
-- Problem 4
SELECT t.name "Track Name", a.title "Album Title"
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';