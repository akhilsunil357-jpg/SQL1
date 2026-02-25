use mashup;

create table `book`(
ID INT(5) PRIMARY key AUTO_INCREMENT,
TITLE VARCHAR(100) NOT NULL,
AUTHOR VARCHAR(100) NOT NULL,
PRICE DECIMAL(10,2) NOT NULL,
STOCK INT (6)
);

INSERT INTO BOOK (ID,TITLE,AUTHOR,PRICE,STOCK) VALUES
(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);


SELECT * FROM BOOK;


--Display all books that cost less than 450 and have stock more than 30.--
SELECT * FROM BOOK WHERE ( PRICE < 450 AND STOCK > 30); 
--Update the stock to 45 and reduce the price to 420 for the book titled ‘Deep Work’.--
UPDATE BOOK 
SET STOCK = 45,
    PRICE = 420
WHERE ID = 5;    

--Delete the book titled ‘Ikigai’.--
DELETE FROM BOOK WHERE TITLE = 'Ikigai';
--Show the average book price and total number of books currently in the table.--
select AVG(price) as AVG_PRICE ,SUM(STOCK) FROM BOOK; 

--Display the top 3 most expensive books available.--

SELECT  * FROM BOOK
ORDER BY PRICE DESC
LIMIT 3;


