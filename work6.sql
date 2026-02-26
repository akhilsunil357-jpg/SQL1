use mashup;

CREATE TABLE BOOKS1(
    ID INT(4) PRIMARY key AUTO_INCREMENT,
TITLE VARCHAR(100) NOT NULL,
AUTHOR VARCHAR(100) NOT NULL,
GENRE VARCHAR (100) NOT NULL,
PRICE DECIMAL (10,2) NOT NULL,
COPIES_SOLD INT (8) NOT NULL
);

INSERT INTO BOOKS1 (ID,TITLE,AUTHOR,GENRE,PRICE,COPIES_SOLD)VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);




CREATE TABLE BOOKS2(
    ID INT(4) PRIMARY key AUTO_INCREMENT,
TITLE VARCHAR(100) NOT NULL,
AUTHOR VARCHAR(100) NOT NULL,
GENRE VARCHAR (100) NOT NULL,
PRICE DECIMAL (10,2) NOT NULL,
COPIES_SOLD INT (8) NOT NULL
);

INSERT INTO BOOKS2 (ID,TITLE,AUTHOR,GENRE,PRICE,COPIES_SOLD)VALUES
(1, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(2, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);


--Show the list of all books from both tables, displaying only the title and author.--

SELECT TITLE , AUTHOR FROM BOOKS1
UNION
SELECT TITLE , AUTHOR FROM BOOKS2;

--Display all books from the books table where the price is greater than 400.--

SELECT * FROM BOOKS1 WHERE PRICE > 400
UNION ALL
SELECT * FROM BOOKS2 WHERE PRICE > 400;

--Show the average price of books in the books table.--
SELECT AVG(PRICE) AS AVG_PRICE FROM BOOKS1;
--Display the number of books in the books table using a count.--
SELECT COUNT(TITLE) AS `TOTAL BOOKS` FROM BOOKS1;

--Show the title and author from books table with aliases Book Title and Written By--

SELECT CONCAT(TITLE,AUTHOR) AS `BOOKS TITLE AND WRITTEN BY....` FROM BOOKS2;


