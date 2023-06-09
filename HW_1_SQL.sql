CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);

select * from students;

select id from students;

select name from students;

select email from students;

select name, email from students;

select id, name, email, created_on from students;

select name from students
	where password = '12333';

select name from students
	where created_on  = '2021-03-26 00:00:00';

select name from students
	where name like '%Анна%';
	
select name from students
	where name like '%Anna%';
	
select name from students
	where name like '%8';
	
select name from students
	where name like '%a%';
	
select name from students
	where created_on = '2021-07-12 00:00:00';
	
select name from students
	where created_on = '2021-07-12 00:00:00' and password = '1m313';
	
select name from students
	where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
	
select name from students
	where created_on = '2021-07-12 00:00:00' and name like '%8%';
	
select name from students
	where id = 110;
	
select name from students
	where id = 153;

select name from students
	where id > 140;


select name from students
	where id < 130;

select name from students
	where id < 127 or id > 188;

select name from students
	where id <= 137;

select name from students
	where id >= 137;

select name from students
	where id > 180 and id < 190;


	
select name from students
	where id between 180 and 190;


select name from students
	where password = '1233' or password = '1m313' or password = '123313';


select name from students
	where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';


select MIN(id) from students;


select MAX(id) from students;



select COUNT(name) from students;


select id, name, created_on from students
	order by created_on;
	

select id, name, created_on from students
	order by created_on desc;