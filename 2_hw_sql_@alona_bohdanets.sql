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
 
 
 

