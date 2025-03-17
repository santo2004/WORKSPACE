-- Create the database
CREATE DATABASE test;

-- Use the created database
USE test;

-- Creating a student database
create table stud(
    name varchar(MAX),
    age INT, 
    class varchar(10)
)

--displaying the created table
select * from stud