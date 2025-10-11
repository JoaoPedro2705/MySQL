create database videogames
default character set utf8mb4
default collate utf8mb4_general_ci;

use videogames;

create table jogos(
id int not null auto_increment,
nome varchar(50),
plataforma varchar(50),
genero varchar(50),
desenvolvedora varchar(50),
data_de_lancamento date,
status varchar(50),
nota_pessoal tinyint,
primary key (id)
)default charset = utf8mb4;

desc jogos;
select * from jogos; 
insert into jogos values
(default,'Ghost Recon Wildlands' ,'Multiplataforma','Tiro Militar','Ubisoft','2017/03/07','Finalizado',8),
(default,'Skate3 ','Xbox - PS3', 'Sport','EA Games','2010/05/11','Finalizado',8),
(default,'GTA San Andreas','Multiplataforma','Mundo Aberto - Ação','Rockstar Games','2005/06/07','Finalizado',10),
(default,'Call Of Duty BO2','Multiplataforma','FPS','Activison','2012/11/13','Finalizado',10),
(default,'Watch Dogs 2','Multiplataforma','Mundo Aberto - Ação','Ubisoft','2016/11/15','Finalizado',8),
(default,'Uncharted 4','Playstation','Ação e Aventura','Nauty Dogs','2016/05/10','Finalizado',10),
(default,'Forza Horizon 5','Multiplataforma','Corrida - Mundo Aberto','Microsoft','2021/11/05','Finalizado',7),
(default,'GTA Vice City','Multiplataforma','Mundo Aberto - Ação','Rockstar Games','2002/10/27','Finalizado',9);

drop table jogos;
