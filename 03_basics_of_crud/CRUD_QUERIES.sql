 -- Describe Cats Table
DESC cats;

-- Select All From Cats Table;
SELECT * FROM Cats c ;

-- Using WHERE clause
SELECT * 
FROM Cats c
WHERE c.age > 3;

-- Alter Table
ALTER TABLE Cats 
ADD COLUMN breed varchar(20) default 'Maine Coon' not null;

-- Delete Table
DELETE 
FROM Cats 

