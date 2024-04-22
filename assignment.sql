--2
select title from TITLES where title LIKE '%s' OR title LIKE '%t';

--3
select title from TITLES where type='business' or type='psychology' or type='undecided';
--or
SELECT title AS book
FROM titles
WHERE
    type IN ('business', 'psychology','undecided');

--4
SELECT title
FROM titles
WHERE 
    ytd_sales > 5000 AND royalty < 20;

--5
SELECT title
FROM titles
WHERE 
    pub_id = 0736
ORDER BY
    ytd_sales ASC;

--6
SELECT 
    au_id,
    COUNT(*) AS no_of_books
FROM
    TITLEAUTHOR
GROUP BY 
    au_id;

SELECT * from TITLEAUTHOR;

--7
select COUNT(*) as no_of_authors 
from TITLEAUTHOR
group BY title_id;

