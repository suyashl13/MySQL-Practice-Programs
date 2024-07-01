-- COUNT() FUNCTION.
SELECT COUNT(b.title) 
FROM books b;

-- COUNT author first names.
SELECT COUNT(b.author_fname)
FROM books b; -- 65

-- Distinct Count.
SELECT COUNT(DISTINCT author_fname) 
FROM books; -- 51

-- Count books starting from word The.
SELECT COUNT(b.book_id)
FROM books b 
WHERE b.title LIKE 'The%';
