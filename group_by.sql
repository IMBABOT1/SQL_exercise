select database();
show tables;
desc books;


select * from books;

select sum(title) from books;
select count(*) from books;

select released_year, count(*) from books
group by
released_year;

select sum(stock_quantity) from books;

select author_fname, author_lname, avg(released_year) from books
group by 
author_fname, author_lname;

select author_fname, author_lname, pages from books
order by pages desc limit 1;

select author_fname, author_lname, pages from books
where pages = (select max(pages) from books);

select released_year as year, count(*) as books, avg(pages) as avg_pages from books
group by released_year order by year;

select * from books;