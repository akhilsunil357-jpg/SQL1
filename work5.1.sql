use mashup;


create table mobiles(
Id INT AUTO_INCREMENT primary KEY,
BRAND VARCHAR(100) NOT NULL,
MODEL VARCHAR(100) not NULL,
PRICE DECIMAL(10,2)NOT NULL,
STOCK INT(6) NOT NULL
);

INSERT  into mobiles (Id,brand,model,price,stock) values
(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);

select * from mobiles;

--Display all mobiles that cost more than 13000 or have stock less than 15.--

select * from mobiles where ( price > 13000 or stock < 15);

--Increase the stock by 5 and update the price to 12500 for the mobile with model = 'Narzo 50'.--

UPDATE mobiles 
set stock = stock+5,
 price = 12500
 where model = 'Narzo 50';

--Delete the mobile whose id is 2.--
delete from mobiles where id = 2;
--Find the lowest and highest price in the table.--
select MIN(price) as 'LOWEST_PRICE' ,
 MAX(price)as 'LARGEST_PRICE' 
 from mobiles ;

--Find the total stock of all mobiles in the table.--
SELECT SUM(STOCK) FROM MOBILES;
--Show the top 2 most expensive mobiles.--

SELECT * FROM MOBILES 
ORDER BY PRICE DESC
 LIMIT 2 ;


