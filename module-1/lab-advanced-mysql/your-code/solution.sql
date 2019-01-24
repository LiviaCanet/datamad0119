#Challenge 1 - Most Profiting Authors

SELECT Author_id, SUM(Royalties)
FROM (SELECT Title_id, Author_id, SUM(Royalty) AS Royalties
FROM (SELECT titles.title_id AS Title_id, titleauthor.au_id AS Author_id, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS Royalty
FROM titles

INNER JOIN titleauthor 
ON titles.title_id=titleauthor.title_id

INNER JOIN sales 
ON titles.title_id=titleauthor.title_id) step_1

GROUP BY  Title_id, Author_id) step_2
GROUP BY  Author_id;



#Challenge 2 - Alternative Solution

SELECT titles.title_id AS Title_id, titleauthor.au_id AS Author_id, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS Royalty
FROM titles

INNER JOIN titleauthor 
ON titles.title_id=titleauthor.title_id

INNER JOIN sales 
ON titles.title_id=titleauthor.title_id; 

#TemporaryTable
CREATE TEMPORARY TABLE TablaTemporal
SELECT Title_id, Author_id, SUM(Royalty) AS Royalties
FROM Step1

GROUP BY  Title_id, Author_id;

SELECT Author_id, SUM(Royalties)
FROM TablaTemporal

GROUP BY  Author_id;



#Challenge 3

CREATE TABLE most_profiting_authors
SELECT Author_id, SUM(Royalties)

FROM(SELECT Title_id, Author_id, SUM(Royalty) AS Royalties
FROM (SELECT titles.title_id AS Title_id, titleauthor.au_id AS Author_id, ((titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100)+titles.advance) AS Royalty

FROM titles

INNER JOIN titleauthor 
ON titles.title_id=titleauthor.title_id

INNER JOIN sales 
ON titles.title_id=titleauthor.title_id) alias

GROUP BY  Title_id, Author_id) alias_2
GROUP BY  Author_id;


