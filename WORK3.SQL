USE mashup;

CREATE TABLE `products`(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(100) NOT NULL,
    CATEGORY VARCHAR(100) NOT NULL,
    PRICE DECIMAL(10,2),
    INSTOCK VARCHAR(3) NOT NULL

);

INSERT INTO products (name, category, price, instock) VALUES
('Laptop', 'Electronics', 55000.00, 'Yes'),
('Headphones', 'Electronics', 1200.00, 'Yes'),
('Chair', 'Furniture', 2500.00, 'No'),
('Table', 'Furniture', 7000.00, 'Yes'),
('Pen', 'Stationery', 20.00, 'Yes'),
('Notebook', 'Stationery', 100.00, 'No'),
('Mouse', 'Electronics', 499.00, 'Yes'),
('Bottle', 'Kitchen', 300.00, 'No'),
('Fan', 'Electronics', 1500.00, 'Yes'),
('Cup', 'Kitchen', 150.00, 'Yes');


SELECT * FROM products;


--Show all the unique product categories available in the table.--
SELECT DISTINCT NAME AS PRODUCTS FROM PRODUCTS;
--Select all products that are in stock and have a price less than 500.--
SELECT * FROM PRODUCTS WHERE INSTOCK = 'YES' AND PRICE < 500;
--Select all products that are not in stock or have a price greater than 1000.--
SELECT * FROM PRODUCTS WHERE INSTOCK = 'NO' AND PRICE > 1000; 

--Show the names and prices of all products, and sort the results by price from highest to lowest.--
SELECT * FROM PRODUCTS ORDER BY PRICE DESC;
--Display the name and an expression showing the price with 18% tax added (label it as price_with_tax).--
SELECT NAME ,(PRICE * 0.18) AS `GST`, PRICE + (PRICE * 0.18) AS `PRICE WITH TAX` FROM PRODUCTS;



