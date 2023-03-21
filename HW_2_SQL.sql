create table employees(
	id serial primary key,
	employee_name varchar (50) not null
);

select * from employees;

insert into employees (employee_name) 
values  ('Булатов_Илья'),
		('Крылова_София'),
		('Гришин_Виктор'),
		('Алексеева_Олеся'),
		('Иванова_Евгения'),
		('Кузнецова_Анастасия'),
		('Нефедова_Камилла'),
		('Федорова_Ксения'),
		('Павлов_Артём'),
		('Смирнова_София'),
		('Андреев_Даниил'),
		('Рыбакова_Дарья'),
		('Рудаков_Ярослав'),
		('Лазарев_Пётр'),
		('Ларина_Диана'),
		('Титова_Анна'),
		('Ефимов_Юрий'),
		('Баранов_Илья'),
		('Акимова_Анастасия'),
		('Трифонов_Арсений'),
		('Козырев_Глеб'),
		('Казаков_Лев'),
		('Новиков_Александр'),
		('Иванова_Таисия'),
		('Миронова_Екатерина'),
		('Соколова_Алия'),
		('Муратова_Мария'),
		('Сидоров_Владислав'),
		('Бочаров_Дмитрий'),
		('Румянцева_Дарья'),
		('Захаров_Иван'),
		('Григорьева_Ева'),
		('Казаков_Артём'),
		('Туманова_Александра'),
		('Зайцева_Валерия'),
		('Карпов_Фёдор'),
		('Булатов_Артём'),
		('Лебедева_Ангелина'),
		('Егорова_София'),
		('Поликарпов_Матвей'),
		('Кузнецов_Дмитрий'),
		('Сергеева_Амина'),
		('Сорокина_Варвара'),
		('Захаров_Никита'),
		('Дмитриева_Эмилия'),
		('Михайлов_Михаил'),
		('Кузнецов_Константин'),
		('Винокурова_Анна'),
		('Афанасьев_Пётр'),
		('Злобин_Ярослав'),
		('Семенов_Марк'),
		('Смирнов_Мартин'),
		('Ермилова_Дарья'),
		('Воробьева_Алиса'),
		('Филиппов_Филипп'),
		('Осипова_Маргарита'),
		('Семенов_Иван'),
		('Аксенов_Степан'),
		('Смирнова_Алиса'),
		('Михайлов_Егор'),
		('Андрианова_Алиса'),
		('Максимов_Ибрагим'),
		('Королева_Мария'),
		('Комаров_Тимофей'),
		('Баранова_Мирослава'),
		('Зубкова_Вероника'),
		('Борисов_Кирилл'),
		('Ковалева_Сафия'),
		('Беляев_Кирилл'),
		('Литвинова_Василиса');

			
select * from employees;

create table salary2(
	id serial primary key,
	monthly_salary int not null
);

select * from salary2;


insert into salary2 (monthly_salary)
	values	(1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);


select * from salary2;


create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

select * from employee_salary;


insert into employee_salary (employee_id, salary_id)
	values 	(3,7),
			(1,4),
			(5,9),
			(40,13),
			(23,4),
			(11,2),
			(52,10),
			(15,13),
			(26,4),
			(16,1),
			(33,7),
			(12,15),
			(9,1),
			(14,1),
			(85,11),
			(57,14),
			(77,9),
			(122,7),
			(29,8),
			(18,4),
			(71,13),
			(38,5),
			(28,2),
			(96,6),
			(43,12),
			(404,3),
			(24,3),
			(100,11),
			(2,8),
			(54,9),
			(25,7),
			(600,4),
			(67,12),
			(64,5),
			(66,14),
			(95,15),
			(47,1),
			(55,2),
			(61,13),
			(94,6);


create table roles2(
	id serial primary key,
	role_name int unique not null
);

alter table roles2
alter column role_name type varchar (30);


insert into roles2 (role_name)
	values 	('Junior_Python_developer'),
			('Middle_Python_developer'),
			('Senior_Python_developer'),
			('Junior_Java_developer'),
			('Middle_Java_developer'),
			('Senior_Java_developer'),
			('Junior_JavaScript_developer'),
			('Middle_JavaScript_developer'),
			('Senior_JavaScript_developer'),
			('Junior_Manual_QA_engineer'),
			('Middle_Manual_QA_engineer'),
			('Senior_Manual_QA_engineer'),
			('Project_Manager'),
			('Designer'),
			('HR'),
			('CEO'),
			('Sales_manager'),
			('Junior_Automation_QA_engineer'),
			('Middle_Automation_QA_engineer'),
			('Senior_Automation_QA_engineer');

////reate table roles_salary(
	id serial primary key,
	role_id int not null,
	salary_id int not null,
	foreign key (role_id)
		references roles (id),
	foreign key (salary_id)
		references salary (id)
);


create table roles_employees(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles2 (id)
);


insert into roles_employees (employee_id, role_id)
	values	(7,2),
			(20,4),
			(3,9),
			(5,13),
			(23,4),
			(11,2),
			(10,9),
			(22,13),
			(21,3),
			(34,4),
			(6,7),
			(28,8),
			(14,5),
			(24,4),
			(25,16),
			(65,1),
			(59,13),
			(63,11),
			(50,7),
			(36,9),
			(57,17),
			(62,3),
			(27,15),
			(44,14),
			(9,12),
			(47,2),
			(46,20),
			(56,19),
			(66,6),
			(12,18),
			(45,15),
			(54,3),
			(29,9),
			(1,11),
			(15,20),
			(26,8),
			(61,13),
			(41,10),
			(13,6),
			(60,5);
		
		

drop table employees;
drop table salary2;
drop table employee_salary;
drop table roles2;




select * from employees;
select * from salary2;
select * from employee_salary;
select * from roles2;
select * from roles_employees;