-- Print the number of books in the database.
SELECT 
	COUNT(*)
FROM
	books b;

-- Print out how many books where released in each year.
SELECT
	b.released_year, 
	COUNT(*)
FROM
	books b
GROUP BY
	b.released_year;

-- Find average released_year for each author.
SELECT 
	CONCAT(b.author_fname, b.author_lname) as author_fullname,
	AVG(b.released_year)
FROM
	books b
GROUP BY
	author_fullname;

-- Find the full name of the author who wrote the longest book
-- USING SUBQUERY
SELECT
	CONCAT(b.author_fname, b.author_lname) as author_fullname,
	b.pages
FROM
	books b
WHERE 
	b.pages = (
	SELECT
		MAX(b2.pages)
	FROM
		books b2);

-- Find the full name of the author who wrote the longest book
-- WITHOUT USING SUBQUERY
SELECT 
	CONCAT(b.author_fname, b.author_lname) as author_fullname,
	b.pages
FROM 
	books b
ORDER BY
	b.pages DESC
LIMIT 1;

-- Make this happen - Get a tuple of (year, book_count, avg_pages)
SELECT 
	b.released_year as year,
	COUNT(*) as books,
	AVG(b.pages) as avg_pages
FROM 
	books b
GROUP BY 
	year
ORDER BY 
	year ASC;
