-- GROUP BY AUTHOR NAMES
SELECT CONCAT(b.author_fname ,' ', b.author_lname) as author_fullname, COUNT(*) as books_written 
FROM books b 
GROUP BY author_fullname;

-- Select Distinct Release year and group by it.
SELECT b.released_year, COUNT(b.book_id) as book_released 
FROM books b
GROUP BY released_year;