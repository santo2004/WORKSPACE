-- Create the database
--CREATE DATABASE test;

-- Use the created database
USE test;

-- Creating a student database
create table student(
    name varchar(MAX),
    age INT, 
    class varchar(10)
);

--inserting values into stud
insert into student(name,age,class) values
    ('santo',21,'4th year'),
    ('viji',20,'4th year'),
    ('shruthi',20,'4th year'
);

--adding a new column dob
ALTER TABLE student ADD dob DATE;

--updating values for the new columns
UPDATE student SET dob = '2004-02-23' WHERE name = 'santo';
UPDATE student SET dob = '2004-04-02' WHERE name = 'viji';
UPDATE student SET dob = '2004-04-18' WHERE name = 'shruthi';

--displaying the created table
SELECT * FROM student;
