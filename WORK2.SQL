
USE `work 2`;

CREATE TABLE `work 2`.`test 2` (`ID` INT(10) NOT NULL , `NAME` VARCHAR(30) NOT NULL , `AGE` INT(2) NOT NULL , `DEPARTMENT` VARCHAR(30) NOT NULL , `GRADE` INT(10) NOT NULL ) ENGINE = InnoDB;
INSERT INTO `test 2`(`ID`, `NAME`, `AGE`, `DEPARTMENT`, `GRADE`) VALUES ('1001','JHON','24','MECH','85'),('1002','ALICE','22','CIVIL','91'),('1003','JOJO','25','COMPUTER','95'),('1004','KICK','19','PHYSICS','65'),('1005','JULIE','24','EEE','74'),('1006','KIGER','23','ECE','98');
SELECT * FROM `test 2`;
SELECT * FROM `test 2` WHERE `AGE`>20;

--Insert 4 student records into the students table using realistic data.
--Write a query to display all students whose age is greater than 20.
SELECT * FROM `test 2` WHERE `AGE`>20;
--Write a query to display all students in the 'Computer Science' or 'Physics' departments.
SELECT * from `test 2` where department in ("PHYSICS","COMPUTER");
--Write a query to show the student who has the grade exactly equal to 90.
SELECT * FROM `test 2` where grade=95;
--Write a query to find students whose grades are between 70 and 90.
select * from `test 2` where grade BETWEEN 70 and 90;
 