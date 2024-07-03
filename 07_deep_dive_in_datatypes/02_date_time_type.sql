CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT * FROM people;

-- CURRENT DATETIME Functions.
SELECT CURTIME();
 
SELECT CURDATE();
 
SELECT NOW();
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

-- Date Functions.
SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM people;
 
SELECT 
    birthdate,
    MONTHNAME(birthdate),
    YEAR(birthdate)
FROM people;

-- Time Format functions.
SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;

-- Date Math.

-- Get difference between two dates.
SELECT DATEDIFF(CURRENT_DATE(), p.birthdate), p.birthdate 
FROM people p;

-- Add one year from today.
SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 1 YEAR);

-- Update People table.
UPDATE people 
SET birthdate = DATE_ADD(birthdate , INTERVAL 1 YEAR);

-- Get age of user
SELECT ROUND((DATEDIFF(CURRENT_DATE() ,p.birthdt)) / 365) as age, p.birthdt 
FROM people p;
