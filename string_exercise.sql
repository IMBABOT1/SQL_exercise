select reverse(upper('Why does my cat look at me with such hatred'))as cat;
  
  select database();
  
  use book_shop;
  
  //*I-like-cats*/
  
  select replace(concat('I', ' ', 'like', ' ', 'cats'),
  ' ',
  '-'
  ) as cats;
  
  
  select replace(title, ' ', '->') from books;
  
  
select * from books;

select author_lname as forwards, reverse(author_lname) as backwards from books;

SELECT
  UPPER(concat(author_fname, ' ', author_lname)) AS full_name_in_caps
FROM books;

SELECT
  concat(title, 'was released in ', released_year) AS blurb
FROM books;

SELECT
  title,
  CHAR_LENGTH(title) as character_count
FROM books;

select * from books;

SELECT
  concat(SUBSTRING(title, 1, 10), '...') AS short_title,
  concat(author_lname, ',', author_fname) AS author,
  concat (stock_quantity, ' ', 'in', ' ' 'stocks') AS quantity
FROM books;