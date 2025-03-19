-- Create the database
--CREATE DATABASE test;

-- Use the created database
USE test;
--DROP TABLE IF EXISTS mark;
DROP TABLE IF EXISTS std;
DROP TABLE IF EXISTS mark;

--drop table mark;

-- Creating a student database
CREATE TABLE std(
    stud_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(MAX),
    age INT,
    class VARCHAR(15));

--inserting values into stud
insert into std(name,age,class) values
    ('santo',21,'4th year'),
    ('viji',20,'4th year'),
    ('shruthi',20,'4th year');

--adding a new column dob
ALTER TABLE std ADD DOB DATE;

--updating values for the new columns
UPDATE std SET DOB = '2004-02-23' WHERE name = 'santo';
UPDATE std SET DOB = '2004-04-02' WHERE name = 'viji';
UPDATE std SET DOB = '2004-04-18' WHERE name = 'shruthi';

--displaying the created table
SELECT * FROM std;

--inserting more records into student
INSERT INTO std(name, age, class, DOB) VALUES
    ('sandra', 18, '1st year', '2007-03-15'),
    ('issa', 4, 'KG-1', '2020-12-21'),
    ('meghan',2,'kindergarden','2022-01-03');

select * from std;

select name from std where age>=19;
select name from std where age<=5;

SELECT * FROM std ORDER BY age desc;
select * from std ORDER by name ASC;

SELECT COUNT(*) AS strength FROM std;
select max(age) as eldest from std;
select min(age) as youngest from std;

delete from std where name='meghan';

SELECT class, COUNT(*) AS student_count 
FROM std 
GROUP BY class;

SELECT class, COUNT(*) AS student_count 
FROM std 
GROUP BY class 
HAVING COUNT(*) > 1;

create table mark(
    m_id int IDENTITY(1,1) PRIMARY KEY,
    stud_id int,
    sub varchar(max),
    mark int);

--ALTER TABLE std ADD stud_id INT IDENTITY(1,1) PRIMARY KEY;
ALTER TABLE mark ADD FOREIGN KEY (stud_id) REFERENCES std(stud_id);

-- Insert sample records into the mark table
INSERT INTO mark (stud_id, sub, mark) VALUES
    (1, 'Math', 95),
    (1, 'Science', 88),
    (2, 'Math', 92),
    (2, 'Science', 85),
    (3, 'Math', 89),
    (3, 'Science', 90);

select * from mark;

select s.stud_id, s.name, m.sub, m.mark 
from std s
inner join mark m 
on s.stud_id=m.stud_id;

select s.stud_id, s.name, m.sub, m.mark 
from std s
left join mark m 
on s.stud_id=m.stud_id;

select s.stud_id, s.name, m.sub, m.mark 
from std s
left join mark m 
on s.stud_id=m.stud_id
where m.mark is not null;

select s.stud_id, s.name, m.sub, m.mark 
from std s
right join mark m 
on s.stud_id=m.stud_id;

