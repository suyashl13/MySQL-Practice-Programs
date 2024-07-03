-- NOT LIKE (books having no spaces in their book names)
SELECT b.title, CONCAT(b.author_fname, ' ', b.author_lname) as author_fullname 
FROM books b
WHERE b.title NOT LIKE '% %';

-- Greater Than operator
SELECT * FROM books
WHERE released_year > 2005;
 
SELECT * FROM books
WHERE pages > 500;

-- Less than equal to
SELECT * FROM books
WHERE pages < 200;
 
SELECT * FROM books
WHERE released_year < 2000;
 
SELECT * FROM books
WHERE released_year <= 1985;

-- Between operator
SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2014;



-- Comparing dates
SELECT * 
FROM people p
WHERE birthtime > '09:00:00';

-- Casting a string to date/datetime
SELECT CAST('09:00:00' AS TIME);

-- BETWEEN operator for DATE. 
SELECT * 
FROM people p
WHERE p.birthdate BETWEEN '2001-01-01' AND '2006-12-12';

