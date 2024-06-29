SELECT UPPER(b.title) 
FROM books b;

-- ASCII 
SELECT ASCII(b.title)
FROM books b;

-- Lower Case
SELECT LOWER(b.title)
FROM books b;

-- Char Length
SELECT LENGTH(b.title)
FROM books b;

-- Concat Function
SELECT CONCAT_WS('', 'Sentence: ', b.title)
FROM books b;
