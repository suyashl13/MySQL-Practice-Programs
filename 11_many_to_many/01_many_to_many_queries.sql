-- Challenge 1
SELECT *
FROM Series s
JOIN Reviews r ON r.series_id = s.id; 

-- Challenge 2 (Average rating for each series)
SELECT s.title, AVG(r.rating) as average_rating
FROM Series s 
join Reviews r ON r.series_id  = s.id
GROUP BY s.title
ORDER BY average_rating;

-- Challenge 3 (Get Reviews of each Reviewee)
SELECT r.first_name , r.last_name , revs.rating 
FROM Reviewers r 
JOIN Reviews revs ON r.id  = revs.reviewer_id;

-- Challenge 4 (Series with no Reviews)
SELECT s.title as unreviewed_series
FROM Series s
LEFT JOIN Reviews r ON r.series_id = s.id
WHERE r.id IS NULL;

-- Challenge 5 (Average rating for each genre)
SELECT  s.genre, ROUND(AVG(r.rating), 5) 
FROM Series s 
JOIN Reviews r ON s.id  = r.series_id
GROUP BY s.genre;

-- CHALLENGE 6
SELECT r.first_name, r.last_name, COUNT(rws.id), IFNULL(MIN(rws.rating), 0), IFNULL(MAX(rws.rating), 0), IFNULL(AVG(rws.rating),0),
	CASE
		WHEN COUNT(rws.id) < 1 THEN 'INACTIVE'
		ELSE 'ACTIVE'
	END AS STATUS
FROM Reviewers r 
LEFT JOIN Reviews rws ON r.id = rws.reviewer_id 
GROUP BY r.first_name, r.last_name;

