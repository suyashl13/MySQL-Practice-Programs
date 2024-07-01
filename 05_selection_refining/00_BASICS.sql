-- Select Distinct
SELECT DISTINCT CONCAT(b.author_fname, ' ', b.author_lname) as full_name 
FROM books b;

-- Sorting Results
SELECT CONCAT(b.author_fname, ' ' ,b.author_fname) as full_name, b.pages 
FROM books b
ORDER BY b.pages, full_name DESC;

-- LIMIT NO. OF RECORDS
SELECT CONCAT(b.author_fname, ' ' ,b.author_fname) as full_name, b.pages 
FROM books b
ORDER BY b.pages, full_name DESC
LIMIT 20;

-- To select books with '%' in their title:
SELECT * FROM books
WHERE title LIKE '%\%%';
 
-- To select books with an underscore '_' in title:
SELECT * FROM books
WHERE title LIKE '%\_%';