-- Reduce size of people to 50 characters / C hange datatypes
ALTER TABLE people 
MODIFY name Varchar(50);

-- Add constraint
ALTER TABLE people 
ADD CONSTRAINT name_is_unique UNIQUE(name);

-- Delete Constraint
ALTER TABLE people 
DROP CONSTRAINT name_is_unique;

