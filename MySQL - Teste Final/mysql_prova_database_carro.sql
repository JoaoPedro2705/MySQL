create database carro
default character set utf8mb4
default collate utf8mb4_general_ci;

use carro;

create table proprietarios(
id int not null auto_increment,
nome varchar(100),
idade int,
primary key(id)
)default charset utf8mb4;

create table carros(
id int not null auto_increment,
marca varchar(100),
modelo varchar(100),
ano int,
primary key (id),
proprietario_id int,
foreign key (proprietario_id) references proprietarios(id)
)default charset utf8mb4;


insert into proprietarios values
(default,'Gabriel Vasquez',36),
(default,'Alessandro Vinha',22),
(default,'Matilda Souza',60),
(default,'Breno Enrico',19),
(default,'Julia Helena',19),
(default,'Helen Miriam',47),
(default,'Gustavo Furtado',24),
(default,'Ryan Soldado',67),
(default,'Margarida Nunes',20),
(default,'Pietro Souza',31),
(default,'Edenilson Bint',41),
(default,'Manuela Ramos',34),
(default,'Ulisses Hiago',29),
(default,'Gisele Monique',45),
(default,'Sebastião Hoffman',73),
(default,'João Victor Neto',56),
(default,'Ingrid Neves',28),
(default,'Olivia Suarez',21),
(default,'Carlos Gregory',62),
(default,'Juliana Silva',18);

select * from proprietarios;

insert into carros (marca,modelo,ano,proprietario_id) values
('Toyota','Prius',2015,1),
('Toyota','Hillux',2020,2),
('Toyota','Corolla',2008,3),
('Toyota','Camry',2005,4),
('Toyota','SW4',2014,5),
('Toyota','Corolla Cross',2022,6),
('Volkswagen','Golf',2016,7),
('Volkswagen','Voyage',2012,8),
('Volkswagen','Tera',2025,9),
('Volkswagen','Fusca TSI',2018,10),
('Volkswagen','Gol',2007,11),
('Volkswagen','Saveiro',2009,12),
('Chevrolet','Tracker',2015,13),
('Chevrolet','Corsa Classic',2008,14),
('Honda','City',2022,15),
('Honda','Civic',2005,16),
('Fiat','Pulse',2020,17),
('Fiat','Uno',2006,18),
('Hyundai','Elantra',2013,19),
('Hyundai','Tucson',2021,20);

select * from carros;

-- 16)
select marca, modelo from carros;
-- //

-- 17)
select pro.nome as proprietario, car.modelo as carro
 from proprietarios as pro
 left join carros as car on pro.id = car.proprietario_id;
 -- //
 
 -- 18)
 select * from carros where ano < 2010;
 -- //
 
 -- 19)
 select pro.nome as proprietario, car.modelo as carro
 from proprietarios as pro
 left join carros as car on pro.id = car.proprietario_id
 where car.marca like 'Toyota';
 -- //
 
 -- 20)
select marca, count(*) as total_carros from carros group by marca;
-- //

-- 21)
select marca, count(*) as total_carros from carros group by marca
having count(*) >5;
-- //

-- 22)
update carros
set ano = 2015
where id like '3';

 set SQL_SAFE_UPDATES = 0;
 -- //
 
 -- 23)
 delete from carros
where id = 7;
-- //


