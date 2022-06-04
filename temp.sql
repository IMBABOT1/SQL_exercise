use test;

desc people;

SELECT database();

 create table employees(
	id int not null auto_increment,
    last_name varchar(100) not null,
    first_name varchar(100) not null,
    middle_name varchar(100),
    age int not null,
    current_status varchar(100) not null default 'employed',
    primary key (id)
 );
 
 show tables;
 
 desc employees;
 
 create table cats(
 cat_id int not null auto_increment primary key,
 name varchar(100),
 breed varchar(100),
 age int
 );
 
 insert into cats (name, breed, age)
 values
 ('Ringo', 'Tabby', 4),
 ('Cindy', 'Maine Coon', 10),
 ('Dumbledore', 'Maine Coon', 11),
 ('Egg', 'Persian', 4),
 ('Misty', 'Tabby', 13),
 ('George Michael', 'Ragdoll', 9),
 ('Jackson', 'Sphunx', 7);
  
create database shirts_db;

show databases;

use shirts_db;

drop database test;

drop table shirts;

create table shirts (
shirt_id int not null auto_increment primary key,
article varchar(255) not null,
color varchar(255) not null,
shirt_size varchar(255) not null,
last_worn int not null);

SELECT database();

show databases;

show tables;

desc shirts;

INSERT INTO
  shirts (article, color, shirt_size, last_worn)
VALUES
  ('t-shirt', 'white', 'S', 10),
  ('t-shirt', 'green', 'S', 200),
  ('polo shirt', 'black', 'M', 10),
  ('tank top', 'blue', 'S', 50),
  ('t-shirt', 'pink', 'S', 0),
  ('polo shirt', 'red', 'M', 5),
  ('tank top', 'white', 'S', 200),
  ('tank top', 'blue', 'M', 15);
  
  
  SELECT * from shirts;
  
  insert into shirts (article, color, shirt_size, last_worn)
  values
  ('polo shirt', 'purple', 'm', 50);
  
  select article, color from shirts;
  
  select article, color, shirt_size, last_worn from shirts
  where
  shirt_size = 'm';
  
  select * from shirts
  where article = 'polo shirt';
  
  update shirts set shirt_size = 'L'
  where article = 'polo shirt';
  
  select * from shirts
  where last_worn <= 15;
  
  update shirts set last_worn = 0
  where last_worn <= 15;

  select * from shirts
  where color = 'white';
  
  update shirts
  set shirt_size = 'xs',
	  color = 'off white'
  where color = 'white';
  
  select * from shirts;
  

  
  delete from shirts
  where last_worn = 200;
  
  select * from shirts;
  
  select * from shirts
  where article = 'tank top';
  
  delete from shirts
  where article = 'tank top';

  delete from shirts;
  
  select * from shirts;
  
  drop table shirts;
  
  
  select database();
  
  create database book_shop;
  
  show databases;
  
  drop database shirts_db;
  
  use book_shop;
  
  show tables;
  
  
