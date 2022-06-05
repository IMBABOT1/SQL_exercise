select database();
show tables;
desc books;

select title from books 
WHERE title like '%Stories%';

select title, pages from books order by pages desc limit 1;


select * from books;

select concat(title, ' ', '-', ' ', released_year) as summary from books order by released_year desc limit 3;


select title, author_lname from books
where author_lname like '% %';

select title, released_year, stock_quantity from books
order by stock_quantity limit 3;

select title, author_lname from books
order by author_lname, title;

SELECT
  concat(UPPER('my favorite author is '), UPPER(author_fname), ' ', UPPER(author_lname), '!') AS yell
FROM books
ORDER BY author_lname;