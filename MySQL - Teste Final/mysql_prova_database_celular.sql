create database celular
default character set utf8mb4
default collate utf8mb4_general_ci;

use celular;

create table proprietario(
id int not null auto_increment,
nome varchar(100),
idade int,
primary key (id)
)default charset utf8mb4;

create table celulares(
id int not null auto_increment,
marca varchar(100),
modelo varchar(100),
sistema_operacional varchar(100), 
primary key (id),
proprietario_id int,
foreign key (proprietario_id) references proprietario(id)
)default charset utf8mb4;


insert into proprietario values
(default,'Lais Nunes',20),
(default,'Natanael Viera',18),
(default,'Hugo Silva',32),
(default,'Jessica Gilza',19),
(default,'Kleber Tork',49),
(default,'Brenda Lisa',22),
(default,'Anastasia Huff',61),
(default,'Yan Carlos',18),
(default,'Juliano Dennis',17),
(default,'Daniela Queiroz',27),
(default,'Niltom Silveira',28),
(default,'Veronica Klaus',31),
(default,'Ronaldo Assunção',24),
(default,'Taiana Vila',38),
(default,'Fernando Higor',21),
(default,'Claudia Fera',44),
(default,'Rodinei Fuks',21),
(default,'Pietra Jana',26),
(default,'Phelipe Jonas',19),
(default,'Vanessa Silvana',28);

select * from proprietario;

insert into celulares (marca, modelo, sistema_operacional, proprietario_id) values
('Samsung','S21','Android',1),
('Samsung','S23','Android',2),
('Samsung','S22','Andorid',3),
('Samsung','S24','Android',4),
('Samsung','J4','Android',5),
('Samsung','S24+','Android',6),
('Samsung','S23 FE','Android',7),
('Motorola','Moto G24','Android',8),
('Motorola','Moto G5','Android',9),
('Motorola','Moto E25','Android',10),
('Motorola','Moto G20','Android',11),
('Apple','Iphone 2','IOS',12),
('Apple','Iphone 3','IOS',13),
('Apple','Iphone 4','IOS',14),
('Apple','Iphone 5','IOS',15),
('Apple','Iphone 6','IOS',16),
('Apple','Iphone 7','IOS',17),
('Apple','Iphone 8','IOS',18),
('Apple','Iphone 10','IOS',19),
('Apple','Iphone 11','IOS',20);

select * from celulares;

-- 32)
select marca, modelo from celulares;
-- //

-- 33)
select pro.nome as proprietario, cel.modelo as celular
from proprietario as pro
left join celulares as cel on pro.id = cel.proprietario_id;
-- //

-- 34)
select modelo,sistema_operacional from celulares
where sistema_operacional like 'Android';

update celulares
set sistema_operacional = 'Android'
where id like '3';

set SQL_SAFE_UPDATES = 0;
-- //

-- 35)
select pro.nome as proprietario, cel.modelo as celular
 from proprietario as pro
 left join celulares as cel on pro.id = cel.proprietario_id
 where cel.marca like 'Samsung';
 
-- //

-- 36)
select sistema_operacional, count(*) as total_celulares from celulares group by sistema_operacional;
-- //

-- 37)
select sistema_operacional, count(*) as total_celulares from celulares group by sistema_operacional
having count(*) > 10;
-- //

-- 38)
update celulares
set sistema_operacional = 'IOS', marca = 'Apple', modelo = 'Iphone XR'
where id like '4';
-- //

-- 39)
delete from celulares
where id like '9';
-- //

