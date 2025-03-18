-- Create the database
--CREATE DATABASE test;

-- Use the created database
USE test;

drop table stud;
drop table studs;
drop table students;
drop table student;

-- Creating a student database
create table student(
    name varchar(MAX),
    age INT, 
    class varchar(15)
);

--inserting values into stud
insert into student(name,age,class) values
    ('santo',21,'4th year'),
    ('viji',20,'4th year'),
    ('shruthi',20,'4th year');

--adding a new column dob
ALTER TABLE student ADD DOB DATE;

--updating values for the new columns
UPDATE student SET DOB = '2004-02-23' WHERE name = 'santo';
UPDATE student SET DOB = '2004-04-02' WHERE name = 'viji';
UPDATE student SET DOB = '2004-04-18' WHERE name = 'shruthi';

--displaying the created table
SELECT * FROM student;

--inserting more records into student
INSERT INTO student(name, age, class, DOB) VALUES
    ('sandra', 18, '1st year', '2007-03-15'),
    ('issa', 4, 'KG-1', '2020-12-21'),
    ('meghan',2,'kindergarden','2022-01-03');

select * from student;

select name from student where age>=19;
select name from student where age<=5;

SELECT * FROM student ORDER BY age desc;
select * from student ORDER by name ASC;

SELECT COUNT(*) AS strength FROM student;
select max(age) as eldest from student;
select min(age) as youngest from student;

delete from student where name='meghan';

SELECT class, COUNT(*) AS student_count 
FROM student 
GROUP BY class;

SELECT class, COUNT(*) AS student_count 
FROM student 
GROUP BY class 
HAVING COUNT(*) > 1;

ALTER TABLE student ADD student_id INT IDENTITY(1,1) PRIMARY KEY;

