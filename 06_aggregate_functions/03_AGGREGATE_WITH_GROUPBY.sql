-- Find latest_released_year and earliest_released_year for each author.
SELECT
	CONCAT(b.author_fname, '', b.author_lname) as author_fullname, 
	MIN(b.released_year) as earliest_released_year,
	MAX(b.released_year) as latest_released_year
FROM
	books b
GROUP BY
	b.author_fname,
	b.author_lname;

-- Find the longest page count for each author
SELECT
	CONCAT(b.author_fname, ' ', b.author_lname) as author_fullname,
	MAX(b.pages) as maximum_pages_book
FROM
	books b
GROUP BY
	author_fullname;
	
-- Find the total no. of pages written by an author
SELECT 
	CONCAT(b.author_fname, ' ', b.author_lname) as author_fullname,
	SUM(b.pages) as pages_written
FROM books b
GROUP BY author_fullname
ORDER BY pages_written DESC;

-- Calculate Average Released year across all the books.
SELECT 
	AVG(b.released_year) 
FROM books b;


-- Calculate average Stock Quantity
SELECT
	AVG(b.stock_quantity) 
FROM books b;

-- Select AVERAGE Stock quantity with respect to year.
SELECT
	b.released_year,
	AVG(b.stock_quantity) as avg_stock_quantity
FROM books b
GROUP BY b.released_year
ORDER BY avg_stock_quantity DESC;


