select database();
show databases;
show tables;

select title, released_year
from books
where released_year >= 2004 
and released_year <=2015;

select * from books;

select * from books
where 
released_year < 1980;

select * from books
where 
released_year > 1980;

select * from books
where
author_lname = 'eggers' or author_lname = 'chabon';


select * from books
where
author_lname = 'lahiri' and released_year > 2000;


select * from books
where pages between 100 and 200;

select * from books
where
author_lname like 'c%' or author_lname like's%';


select title, author_lname,
case
	when title like '%stories%' then 'short stories'
    when title like '%just kids%' or title like '%heartbreaking work%' then 'memoir'
    else 'Novel'
    end as TYPE
from books;

select * from books;


select title, author_lname, count(*) from books
case
		when count > 1 then 'books'
        when count = 1 then 'book'
	end as COUNT

group by author_lname, author_fname

