-- Create the database
--CREATE DATABASE test;

-- Use the created database
USE test;

-- Creating a student database
create table stds(
    name varchar(MAX),
    age INT, 
    class varchar(10)
);

--inserting values into stud
insert into stds(name,age,class) values
    ('santo',21,'4th year'),
    ('viji',20,'4th year'),
    ('shruthi',20,'4th year'
);

--displaying the created table
select * from stds