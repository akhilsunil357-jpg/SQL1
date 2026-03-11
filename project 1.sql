create DATABASE sales;

use sales;

create table Employee
(Id INT(3) AUTO_INCREMENT PRIMARY KEY,
 Name VARCHAR (20) NOT NULL,
 Department VARCHAR (20) not NULL,
 Leaves INT (3) NOT null
);

INSERT INTO Employee VALUES
(1, 'Raju', 'Sales', 1),
(2, 'Sangeetha', 'Sales', 3),
(3, 'Vinay', 'Operations', 8),
(4, 'Abey', 'Packing', 2),
(5, 'Thomas', 'Packing', 1),
(6, 'Muneer', 'Operations', 7),
(7, 'Aparna', 'Sales', 3),
(8, 'Abid', 'Operations', 9),
(9, 'Fathima', 'Sales', 11),
(10, 'Varghese', 'Operations', 14);



select * from employee;


create table Exam
( Id INT (3) AUTO_INCREMENT PRIMARY KEY,
 Employee_id VARCHAR (20) NOT NULL,
 Exam_status VARCHAR (20) NOT null
);

INSERT INTO Exam VALUES
(1, 2, 'Pass'),
(2, 5, 'Fail'),
(3, 1, 'Fail'),
(4, 8, 'Pass'),
(5, 3, 'Pass'),
(6, 1, 'Pass'),
(7, 6, 'Fail'),
(8, 9, 'Pass'),
(9, 10, 'Pass');



select * from exam;


SELECT * from employee where department = 'sales' and LEAVES > 5;


select count(department) as No_of_Emp from employee where department = 'operations';


SELECT department,COUNT(department) as Num_of_Emp from employee GROUP BY department;

select department,sum(LEAVES)as Total_leaves from employee GROUP BY department HAVING sum(LEAVES)>10;


select name,exam_status from employee join exam on employee.id=exam.employee_id where exam_status='pass';

select name from employee where id NOT in (select employee_id from exam);

select employee.name from employee LEFT JOIN exam on employee.id=exam.employee_id where employee.id not in (select employee_id from exam);