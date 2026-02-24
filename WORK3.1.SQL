USE mashup;

create table BOOKS (
ID INT PRIMARY KEY AUTO_INCREMENT,
TITLE VARCHAR(100) NOT NULL,
AUTHOR VARCHAR (100) NOT NULL,
PRICE DECIMAL(10,2) NOT NULL ,
STOCK_STATUS VARCHAR(3) NOT NULL,
GENRE VARCHAR(100) NOT NULL 
);


INSERT INTO books (title, author, price, stock_status, genre) VALUES
('Wings of Fire', 'A.P.J Abdul Kalam', 350.00, 'In Stock', 'Biography'),
('The Alchemist', 'Paulo Coelho', 299.00, 'In Stock', 'Fiction'),
('Brief History of Time', 'Stephen Hawking', 550.00, 'Out of Stock', 'Science'),
('India After Gandhi', 'Ramachandra Guha', 800.00, 'In Stock', 'History'),
('Atomic Habits', 'James Clear', 450.00, 'In Stock', 'Self Help'),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 399.00, 'Out of Stock', 'Finance'),
('Higher Engineering Mathematics', 'B.S. Grewal', 750.00, 'In Stock', 'Education'),
('The Great Gatsby', 'F. Scott Fitzgerald', 250.00, 'In Stock', 'Fiction'),
('Think and Grow Rich', 'Napoleon Hill', 199.00, 'Out of Stock', 'Finance'),
('Sapiens', 'Yuval Noah Harari', 650.00, 'In Stock', 'History');



SELECT * FROM BOOKS;



--Show all the different genres available in the store (no duplicates).--


--List all books that are in stock and priced below 400.--
--List all books that are either out of stock or have a price above 700.--
--Show the title and price of every book along with a new column that adds 10% GST to the price.--

--Display the title, price, and stock_status of all books, sorted by price from highest to lowest.--

