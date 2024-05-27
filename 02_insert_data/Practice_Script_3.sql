-- Create People Table
CREATE TABLE IF NOT EXISTS 
Person (  
	id int primary key auto_increment,
	first_name varchar(40),
	last_name varchar(50),
	age int
);

-- Insert into people
INSERT INTO 
Person (first_name, last_name, age)
values (
	'Suyash',
	'Lawand',
	23
);

-- Insert Multiple into people
INSERT INTO Person (first_name, last_name, age) VALUES
('John', 'Doe', 30),
('Jane', 'Smith', 25),
('Michael', 'Johnson', 40);

-- See People Table
SELECT *
FROM Person;


-- Drop Table
DROP TABLE IF EXISTS Person;

