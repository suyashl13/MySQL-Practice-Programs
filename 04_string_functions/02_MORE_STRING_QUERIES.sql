-- UpperCase
SELECT
	UPPER(b.title)
FROM
	books b;
-- ASCII
SELECT
	ASCII(b.title)
FROM
	books b;
-- Lower Case
SELECT
	LOWER(b.title)
FROM
	books b;
-- Char Length
SELECT
	LENGTH(b.title)
FROM
	books b;
-- Concat Function
SELECT
	CONCAT_WS(' := ', 'Sentence', b.title)
	-- With Seperator
FROM
	books b;
-- Substring
SELECT
	SUBSTRING(b.title, 1, 10)
FROM
	books b;
-- Concat and and Sub - String Function
SELECT
	CONCAT(SUBSTR(b.title, 1, 10), '...') as short_title
FROM
	books b;
-- Authors Initials
SELECT
	CONCAT(SUBSTRING(b.author_fname, 1, 1), '. ', SUBSTR(b.author_lname, 1, 1), '.') as author_initials
FROM
	books b;
-- Replace
UPDATE
	books
SET
	title = REPLACE(title, '_', ' ');
-- Reverse
SELECT
	REVERSE(b.author_fname)
FROM
	books b
	-- CHAR LENGHT
SELECT
	CHAR_LENGTH(b.title)
FROM
	books b;


-- Insert new characters
SELECT INSERT(b.title, 6, 0, '11')
FROM books b;

-- Get Characters From Left
Select left(b.title, 2)
from books b;

-- Repeat Characters
SELECT REPEAT ('a',2);

-- Trim
SELECT TRIM(' suyash  '); 
