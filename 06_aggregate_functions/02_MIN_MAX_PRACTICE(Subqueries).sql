-- Find minimum published year in table;
SELECT MIN(b.released_year) 
FROM books b;

-- Find the book with longest title.
SELECT b.title 
FROM books b
WHERE CHAR_LENGTH(b.title) = (SELECT MAX(CHAR_LENGTH(b2.title)) FROM books b2); 

-- Select books with maximum pages
SELECT b.title, b.pages 
FROM books b 
ORDER BY b.pages DESC limit 1;

-- Using SUBQUERY
SELECT b.title, b.pages 
FROM books b 
WHERE b.pages = (SELECT MAX(b2.pages) FROM books b2);

