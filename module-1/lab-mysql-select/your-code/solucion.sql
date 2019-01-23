#Challenge 1 - Who Have Published What At Where?

SELECT authors.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `First Name`, titles.title `TITLE`, publishers.pub_name `Publisher`
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id

INNER JOIN titles
ON  titles.title_id = titleauthor.title_id

INNER JOIN publishers
ON titles.pub_id = publishers.pub_id

GROUP BY authors.au_ID, publishers.pub_name, titles.title;


#Challenge 2 - Who Have Published How Many At Where?

SELECT authors.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `First Name`, publishers.pub_name `Publisher`, COUNT(titles.title_id) AS `Title Count`
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id

INNER JOIN titles
ON  titles.title_id = titleauthor.title_id

INNER JOIN publishers
ON titles.pub_id = publishers.pub_id

GROUP BY authors.au_ID, publishers.pub_name;


#Challenge 3 - Best Selling Authors

SELECT authors.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `First Name`, SUM(titles.ytd_sales) AS Total
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id

INNER JOIN titles
ON  titles.title_id = titleauthor.title_id

GROUP BY authors.au_id
GROUP BY SUM(titles.ytd_sales) DESC
LIMIT 3;


#Challenge 4 - Best Selling Authors Ranking

SELECT authors.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `First Name`, SUM(titles.ytd_sales) AS Total
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id

INNER JOIN titles
ON  titles.title_id = titleauthor.title_id

GROUP BY authors.au_id
GROUP BY SUM(titles.ytd_sales) DESC
LIMIT 23
ORDER BY SUM(titles.ytd_sales); 



 
