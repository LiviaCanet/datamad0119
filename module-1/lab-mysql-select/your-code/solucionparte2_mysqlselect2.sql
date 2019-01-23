SELECT authors.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `First Name`, titles.title `TITLE`, publishers.pub_name `Publisher`, COUNT(titles.title_id) AS `Title Count`
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id

INNER JOIN titles
ON  titles.title_id = titleauthor.title_id

INNER JOIN publishers
ON titles.pub_id = publishers.pub_id

GROUP BY authors.au_ID, publishers.pub_name, titles.title;