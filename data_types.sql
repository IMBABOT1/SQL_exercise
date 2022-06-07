select NOW();
select current_time();
select current_date();

select dayofweek(current_date());
 ;

select date_format(current_date(), '%m/%d/%Y') as day;

select concat(date_format(NOW(), '%M'), ' ', date_format(NOW(), '%D'), ' at ', date_format(current_time(), '%k'),  ':', date_format(current_time(), '%s')) as time;

create table tweets(
content varchar(255),
username varchar(20),
created_at timestamp default now() on update current_timestamp
);

insert into tweets(content, username)
values
('asdgvfsad', 'user1'),
('asdgvfsadasfd', 'user2');

select database();
show databases;
show tables;

select * from tweets;

