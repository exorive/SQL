create  table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values  ('Lavinia'),
		('Neil'),
		('Clarke'),
		('Deanna'),
		('Rooney'),
		('Henry'),
		('Teegan'),
		('Christian'),
		('Lucas'),
		('Rhonda'),
		('Kenyon'),
		('Victoria'),
		('Preston'),
		('Lucian'),
		('Tate'),
		('Jana'),
		('Moses'),
		('Len'),
		('Reuben'),
		('Judah'),
		('Gillian'),
		('Yen'),
		('Mariko'),
		('Bethany'),
		('Althea'),
		('Ira'),
		('Amy'),
		('Signe'),
		('Kimberly'),
		('Wayne'),
		('Amery'),
		('Kermit'),
		('Deacon'),
		('Alexander'),
		('Kiona'),
		('Reece'),
		('Cairo'),
		('Nayda'),
		('Marah'),
		('India'),
		('Rae'),
		('Perry'),
		('Mariam'),
		('Dalton'),
		('Orson'),
		('Mohammad'),
		('Xavier'),
		('Amaya'),
		('Megan'),
		('Patience'),
		('Tanner'),
		('Keaton'),
		('Kelsey'),
		('Ava'),
		('Levi'),
		('Tarik'),
		('Farrah'),
		('Cullen'),
		('Cassidy'),
		('Jane'),
		('Regina'),
		('Amena'),
		('Melodie'),
		('Regina'),
		('Olivia'),
		('Lars'),
		('Dylan'),
		('Kimberley'),
		('Kermit'),
		('Ezra');
	
create  table salary(
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values
		(1000),
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
	
create  table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values
		(24,15),
		(15,8),
		(75,11),
		(10,10),
		(6,7),
		(78,14),
		(20,9),
		(72,4),
		(16,5),
		(14,6),
		(5,9),
		(3,5),
		(74,2),
		(77,13),
		(2,8),
		(25,1),
		(13,13),
		(12,14),
		(19,3),
		(76,6),
		(27,6),
		(7,15),
		(8,7),
		(22,12),
		(17,10),
		(23,11),
		(30,3),
		(11,16),
		(28,8),
		(4,5),
		(1,1),
		(26,2),
		(79,1),
		(73,16),
		(18,12),
		(29,3),
		(21,4),
		(71,7),
		(80,2),
		(9,4);

create table roles(
id serial primary key,
role_name int not null unique
);

ALTER TABLE roles
ALTER COLUMN role_name SET DATA TYPE varchar(30);

insert into roles(role_name)
values
		('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
	
create table roles_employee(
id serial primary key,
employee_id int not null unique, 
role_id int not null,
foreign key(employee_id)
	references employees(id),
foreign key(role_id)
	references roles(id)
);


insert into roles_employee(employee_id, role_id)
values
(14,5),
(15,14),
(30,7),
(5,15),
(3,19),
(33,15),
(18,8),
(10,2),
(34,11),
(38,3),
(23,18),
(22,8),
(12,1),
(9,12),
(21,4),
(16,14),
(4,13),
(6,5),
(32,7),
(1,19),
(28,2),
(29,20),
(19,4),
(20,16),
(36,3),
(2,9),
(7,1),
(8,6),
(11,10),
(35,10),
(13,16),
(37,6),
(31,11),
(40,18),
(24,9),
(27,20),
(26,17),
(17,13),
(39,17),
(25,12);



select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;
