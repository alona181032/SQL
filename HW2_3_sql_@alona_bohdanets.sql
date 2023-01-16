 create table employees (
 id serial primary key,
 employee_name varchar (50) not null
 );

create table salary (
  id serial primary key,
  monthly_salary int not null
 );
 
create  table employees_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

create table roles (
  id serial primary key,
role_name int not null unique
 );

create table roles_employee (
  id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id)
);
TRUNCATE roles_employee RESTART IDENTITY CASCADE;

insert into roles_employee (employee_id, role_id)
values
(70, 12);

insert into roles_employee (employee_id, role_id)
values
(7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 5),
(13, 8),
(15, 7),
(27, 4),
(34, 3),
(21, 13),
(16, 12),
(29, 14),
(33, 9),
(26, 10),
(37, 11),
(25, 3),
(65, 7),
(28, 16),
(69, 19),
(12, 10),
(64, 18),
(19, 3),
(2, 5),
(1, 2),
(44, 4),
(43, 7),
(42, 8),
(41, 1),
(39, 11),
(47, 17),
(48, 19),
(50, 2),
(51, 9),
(57, 7),
(53, 12),
(49, 6),
(68, 1);



ALTER TABLE roles  ALTER COLUMN role_name TYPE varchar(30) USING role_name::varchar(30);

insert into roles (role_name)
VALUES
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




select * from employees;
select * from salary;
select * from roles;
select * from employees_salary;
select * from roles_employee;

TRUNCATE employees_salary RESTART IDENTITY CASCADE;

insert into employees_salary (employee_id, salary_id)
values 
		(3, 16),
		(2, 3),
		(4, 7),
		(5, 13),
		(1, 8),
		(6, 9),
		(8, 10),
		(7, 15),
		(9, 12),
		(44, 6),
		(34, 10),
		(25, 12),
		(68, 14),
		(37, 11),
		(42, 4),
		  (64, 5),
		  (43, 8),
		  (28, 9),
		  (13, 7),
		  (12, 13),
		  (60, 15),
		  (10, 16),
		  (18, 6),
		  (54, 9),
		  (32, 5),
		  (59, 8),
		  (33, 4),
		  (53, 7),
		  (11, 6),
		  (16, 11),
		  (77, 5),
		  (71, 7),
		  (72, 3),
		  (74, 8),
		  (79, 14),
		  (73, 9),
		  (75, 3),
		  (76, 2),
		  (78, 15),
		  (80, 13);

 


insert into salary (monthly_salary)
VALUES
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




  
insert into employees (employee_name)
VALUES
  ('Bevis'),
  ('Alexa'),
  ('Neve'),
  ('Cameran'),
  ('Charlotte'),
  ('Hayden'),
  ('Cynthia'),
  ('Melodie'),
  ('Xena'),
  ('Hammett');
 
insert into employees (employee_name)
VALUES
  ('Xavier'),
  ('Zachery'),
  ('Gannon'),
  ('Bianca'),
  ('Channing'),
  ('Donovan'),
  ('John'),
  ('Rhoda'),
  ('Cyrus'),
  ('Leah');



insert into employees (employee_name)
VALUES
  ('Amy'),
  ('Madison'),
  ('Sasha'),
  ('Drew'),
  ('Idola'),
  ('Erica'),
  ('Owen'),
  ('Ramona'),
  ('Erasmus'),
  ('Octavius');

insert into employees (employee_name)
VALUES
  ('Geoffrey'),
  ('Winter'),
  ('Brenden'),
  ('Nissim'),
  ('Jane'),
  ('Drew'),
  ('Iona'),
  ('Ursa'),
  ('Bradley'),
  ('Sybil');

insert into employees (employee_name)
VALUES
('Allen'),
  ('Morgan'),
  ('Veda'),
  ('Mohammad'),
  ('Louis'),
  ('Bree'),
  ('Hop'),
  ('Zachery'),
  ('Jael'),
  ('Alfonso');

insert into employees (employee_name)
VALUES
    ('Noah'),
  ('Karleigh'),
  ('Tarik'),
  ('Francesca'),
  ('Dieter'),
  ('Graiden'),
  ('Darius'),
  ('Ezra'),
  ('Talon'),
  ('Stephanie');
 
 insert into employees (employee_name)
VALUES
  ('Benedict'),
  ('Sierra'),
  ('Aline'),
  ('Wade'),
  ('Brandon'),
  ('Russell'),
  ('Galena'),
  ('Phyllis'),
  ('Basil'),
  ('Emmanuel');
 
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
	 select employees.employee_name, salary.monthly_salary 
	 from employees join salary 
	 on employees.id = salary.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
	  	select employees.employee_name, salary.monthly_salary 
	 	from employees join salary 
	 	on employees.id = salary.id
	 	where monthly_salary < 2000;
	 
--	 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
-- select *
-- from employees as e
-- left join employees_salary as es on e.id = es.employee_id 
-- left join salary as e on es.salary_id = s.id
--
--  select * from employees_salary
--  
-- select e.employee_name, e.id, es.salary_id  from employees as e
-- left join employees_salary as es on e.id = es.employee_id
-- where es.salary_id is null 
 
 select * from salary
 left join employees_salary on salary.id = employees_salary.salary_id 
 left join employees on employee_id = employees.id
 where employee_name is null 
 
-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select * from salary
 left join employees_salary on salary.id = employees_salary.salary_id 
 left join employees on employee_id = employees.id
 where employee_name is null and monthly_salary < 2000
 
-- 5. Найти всех работников кому не начислена ЗП.
 select employee_name, monthly_salary from employees 
 left join employees_salary on employees.id = employees_salary.employee_id 
 left join salary on employees_salary.salary_id = salary.id
 where monthly_salary is null
 
 -- 6. Вывести всех работников с названиями их должности.
 select employee_name, role_name from employees 
 left join roles_employee on employees.id = roles_employee.employee_id 
 left join roles on roles_employee.role_id = roles.id
 
-- 7. Вывести имена и должность только Java разработчиков.
  select employee_name, role_name from employees 
 left join roles_employee on employees.id = roles_employee.employee_id 
 left join roles on roles_employee.role_id = roles.id
 where role_name like '%Java developer%'
 
-- 8. Вывести имена и должность только Python разработчиков.
  select employee_name, role_name from employees 
 left join roles_employee on employees.id = roles_employee.employee_id 
 left join roles on roles_employee.role_id = roles.id
 where role_name like '%Python%'
 
--  9. Вывести имена и должность всех QA инженеров
  select employee_name, role_name from employees 
 left join roles_employee on employees.id = roles_employee.employee_id 
 left join roles on roles_employee.role_id = roles.id
 where role_name like '%QA%'
 
-- 10. Вывести имена и должность ручных QA инженеров.
   select employee_name, role_name from employees 
 left join roles_employee on employees.id = roles_employee.employee_id 
 left join roles on roles_employee.role_id = roles.id
 where role_name like '%Manual QA%'
 
-- 11. Вывести имена и должность автоматизаторов QA
   select employee_name, role_name from employees 
 left join roles_employee on employees.id = roles_employee.employee_id 
 left join roles on roles_employee.role_id = roles.id
 where role_name like '%Automation QA%'
 
-- 12. Вывести имена и зарплаты Junior специалистов
	select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Junior%'
  
--	13. Вывести имена и зарплаты Middle специалистов
 select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Middle%'
 
--  14. Вывести имена и зарплаты Senior специалистов
	  select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Senior%'
	 
--	 15. Вывести зарплаты Java разработчиков
	   select role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Java developer%'
	 
--	 16. Вывести зарплаты Python разработчиков
	 select role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Python developer%'
	 
--	 17. Вывести имена и зарплаты Junior Python разработчиков
	  select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Junior Python%'
	 
--	 18. Вывести имена и зарплаты Middle JS разработчиков
	 select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Middle JavaScript%'
	 
--	 19. Вывести имена и зарплаты Senior Java разработчиков
	 select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Senior Java developer%' 
	 
--	 20. Вывести зарплаты Junior QA инженеров
	 select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Junior%QA%engineer%'  
	 
--	 21. Вывести среднюю зарплату всех Junior специалистов
	 select role_name, avg(monthly_salary) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Junior%'
	 group by (role_name)
	 
	  select avg(monthly_salary) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Junior%'
	 
--	  22. Вывести сумму зарплат JS разработчиков
	  select sum(monthly_salary) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%JavaScript developer%'
	 
--	 23. Вывести минимальную ЗП QA инженеров
	  select min(monthly_salary) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%QA engineer%'
	 
--	 24. Вывести максимальную ЗП QA инженеров
	 select max(monthly_salary) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%QA engineer%'
	 
--	 25. Вывести количество QA инженеров
	 select role_name, count (*) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%QA engineer%'
	 group by role_name
	 
	  select count (*) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%QA engineer%'
	 
--	 26. Вывести количество Middle специалистов
	  select role_name, count (*) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Middle%'
	 group by role_name
	 
	   select count (*) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%Middle%'
	 
--	 27. Вывести количество разработчиков
	 select role_name, count (*) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%developer%'
	 group by role_name
	 
	   select count (*) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%developer%'	 
	  
--	 28. Вывести фонд (сумму) зарплаты разработчиков.
	 select sum(monthly_salary) from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where role_name like '%developer%' 
	 
   --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
	select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 order by monthly_salary 
	 
--	 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
	 select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where monthly_salary between 1700 and 2300
	 order by monthly_salary
	 
--	 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
	 select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where monthly_salary<2300
	 order by monthly_salary
	 
--	  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
	 select employee_name, role_name, monthly_salary from employees 
	 left join roles_employee on employees.id = roles_employee.employee_id 
	 left join roles on roles_employee.role_id = roles.id
	 left join employees_salary on employees.id = employees_salary.employee_id 
	 left join salary on employees_salary.salary_id = salary.id
	 where monthly_salary in (1100, 1500, 2000)
	 order by monthly_salary
	 
	 
	 
	 
	 
