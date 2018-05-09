CREATE DATABASE mydb;

USE mydb;

SELECT * FROM customers;

SELECT customerNumber, contactLastName, contactFirstName, phone FROM customers;

SELECT customerNumber, contactLastName, contactFirstName, phone, city
	FROM customers
    WHERE contactFirstName = 'Peter' AND city = 'Melbourne';
    
SELECT customerNumber, contactLastName, contactFirstName, phone, city
	FROM customers
    WHERE contactFirstName LIKE '%A%';
    
SELECT customerNumber, contactLastName, contactFirstName, phone, city
	FROM customers
    WHERE customerNumber BETWEEN 103 AND 125;
    
SELECT customerNumber, contactLastName, contactFirstName, phone, city
	FROM customers
    WHERE city IN ('USA', 'France', 'Spain');
    
SELECT customerNumber, contactLastName, contactFirstName, phone, city
	FROM customers
    WHERE country = 'USA' OR country = 'France';

SELECT customerNumber, contactLastName, contactFirstName, phone, city
	FROM customers
    ORDER BY contactFirstName ASC;
    
SELECT customerNumber, contactLastName, contactFirstName, phone, city
	FROM customers
    ORDER BY contactFirstName DESC
    LIMIT 0, 10;
    
SELECT COUNT(country) AS 'Số khách hàng ở France'
	FROM customers
    WHERE country = 'France';
    
INSERT INTO customers (customerNumber, customerName, contactFirstName, contactLastName, phone, addressLine1, city, country) 
	VALUES (500, 'AgileLead', 'Lan', 'Tran', '0978822683', 'Ham Nghi', 'Ha Noi', 'Viet Nam' );

UPDATE customers
	SET customerName = 'Baane Mini Import'
	WHERE customerNumber = 103;
    
SELECT * FROM customers
	WHERE customerNumber = 103;
    
DELETE FROM customers
	WHERE city = 'Nantes';

