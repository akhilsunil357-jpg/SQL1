use mashup;

CREATE TABLE STUDENT(
    ID  INT(3) PRIMARY key AUTO_INCREMENT,
NAME VARCHAR(100),
COURSE VARCHAR(100),
SCORE INT(100),
EMAIL VARCHAR(100),
PHONE INT(100),
CITY VARCHAR(100),
BONUS_POINTS INT(100)
);

INSERT into student (ID,NAME,COURSE,SCORE,EMAIL,PHONE,CITY,BONUS_POINTS)VALUES
(1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);

SELECT * FROM STUDENT;



--Show the total number of students in each course.--

SELECT COURSE, COUNT(NAME) FROM STUDENT GROUP BY COURSE;

--Show the average score for each course, but only for courses where the average score is more than 80.--
SELECT AVG(SCORE), COURSE FROM STUDENT GROUP BY COURSE HAVING AVG(SCORE)>80;

--Show names and scores of students who are from Chennai or Mumbai.--

SELECT NAME, SCORE, CITY FROM STUDENT WHERE CITY IN ('MUMBAI','CHENNAI') ;

--Show the details of students who don’t have any bonus points.--

SELECT * FROM STUDENT WHERE BONUS_POINTS IS NULL;

--Combine the list of student names from Chennai and from Mumbai into a single column list (use UNION).--

SELECT * FROM STUDENT WHERE CITY = 'CHENNAI'
UNION
SELECT * FROM STUDENT WHERE CITY = 'MUMBAI';

