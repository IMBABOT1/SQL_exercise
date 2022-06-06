select database();
create database students;
show databases;
use students;
show tables;

create table students(
id int primary key auto_increment,
first_name varchar(100)
);

create table papers(
title varchar(255),
grade int,
student_id int,
foreign key(student_id) references students(id)
);


INSERT INTO students (first_name) 
VALUES ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) 
VALUES
	(1, 'My First Book Report', 60),
	(1, 'My Second Book Report', 75),
	(2, 'Russian Lit Through The Ages', 94),
	(2, 'De Montaigne and The Art of The Essay', 98),
	(4, 'Borges and Magical Realism', 89);
    
    
select first_name, title, grade from students
join papers
on students.id = papers.student_id
order by grade desc;

 

select first_name, 
	   ifnull(title, 'MISSING'), 
	   ifnull(grade, 0) 
from students
left join papers
on students.id = papers.student_id;


select * from papers;

select first_name, 
       ifnull(avg(grade), 0) as average
from students
left join papers
on students.id = papers.student_id
group by students.id
order by average desc;


select first_name, 
       ifnull(avg(grade), 0) as average,
case
	when avg(grade) is null then 'FAILING'
	when avg(grade) >= 75 then 'PASSING'
	else 'FAILING'
	end as passing_status
from students
left join papers
on students.id = papers.student_id
group by students.id
order by average desc;



select * from students;
select * from papers;