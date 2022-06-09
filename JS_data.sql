show databases;
use join_us;
select database();
show tables;
desc users;

select created_at from users
order by created_at asc
limit 1;

select 
date_format(min(created_at), "%M %D %Y") as earliest
from users;


select email, created_at from users
where created_at = (select created_at from users
order by created_at asc
limit 1);

SELECT count(*) as total, MONTHNAME(created_at) AS 'month'
from users 
group by month
order by total desc;

select count(*) as yahoo_users from users
where email like '%yahoo.com';

select 
case
	when email like '%yahoo.com' then 'yahoo'
    when email like '%gmail.com' then 'gmail'
    when email like '%hotmail.com' then 'hotmail'
    else 'other'
end as provider,
count(*) as total_users
from users
group by provider;
  
  
	