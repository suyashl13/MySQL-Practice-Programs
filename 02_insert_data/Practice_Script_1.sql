-- Create Table Cats
CREATE TABLE IF NOT EXISTS 
Cats (
	id int auto_increment  primary key,
	name varchar(50) not null,
	age int
);

-- Single insert
INSERT INTO Cats (name, age)
values ('Jacob', 2);

-- Select All Cats
SELECT * FROM CATS;

-- MULTIPLE INSERT
INSERT INTO Cats (name, age) VALUES
('Jacob', 2),
('Whiskers', 3),
('Mittens', 1),
('Fluffy', 5);

