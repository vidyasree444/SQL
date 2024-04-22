CREATE TABLE Student(id int,name varchar(10),marks int,branch varchar(6),bid int);

SELECT * FROM Student;

INSERT into Student VALUES(1,'vidya',8,'cse',10);
INSERT into Student VALUES(2,'sree',9,'ece',11);
INSERT into Student VALUES(3,'name',10,'cse',10);

SELECT MAX(marks) from Student;
SELECT COUNT(name) FROM Student;


SELECT ASCII(name)
FROM Student
WHERE name = 'vidya';

SELECT LEFT(name,3) 
FROM Student 
WHERE name='vidya';

SELECT CHARINDEX('z', name, 5) 
from Student 
WHERE name='vidya';

SELECT SUBSTRING(name,2,3) 
FROM Student 
WHERE name='vidya';

SELECT GETDATE();
SELECT MONTH(GETDATE());
SELECT YEAR(GETDATE());
SELECT DAY(GETDATE());

SELECT DATENAME(month,GETDATE());
SELECT DATENAME(weekday,GETDATE());

select user_name();





