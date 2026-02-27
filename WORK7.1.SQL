USE MASHUP;


CREATE TABLE MOBILE(
    ID INT(3) PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(100),
CITY VARCHAR(100),
SCORE INT(100),
BONUS INT(6),
CHALLENGE VARCHAR(100)
);

INSERT INTO MOBILE (ID,NAME,CITY,SCORE,BONUS,CHALLENGE) VALUES
(1, 'Raj', 'Chennai', 88, 5, 'Fitness'),
(2, 'Anu', 'Mumbai', 91, NULL, 'Diet'),
(3, 'Ravi', 'Chennai', 78, 3, 'Fitness'),
(4, 'Meena', 'Delhi', 82, NULL, 'Diet'),
(5, 'Farah', 'Mumbai', 95, 4, 'Fitness'),
(6, 'Kiran', 'Pune', 70, NULL, 'Yoga'),
(7, 'Latha', 'Pune', 87, NULL, 'Fitness');

SELECT * FROM MOBILE;



--Show the details of users whose score is greater than the average score across all users.--

SELECT * FROM MOBILE WHERE SCORE > (SELECT AVG(SCORE) FROM MOBILE);


--Display the names of users who are participating in the same challenge as the user named 'Farah'.--

SELECT NAME,CHALLENGE FROM MOBILE WHERE CHALLENGE = (SELECT CHALLENGE FROM MOBILE WHERE NAME='FARAH');