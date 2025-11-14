create database cinema
default character set utf8mb4
default collate utf8mb4_general_ci;

use cinema;

create table filmes(
id int not null auto_increment,
titulo varchar(50),
diretor varchar(50),
genero varchar(50),
duracao_mins double,
classificacao_etaria varchar(50),
primary key (id)
)default charset = utf8mb4;

desc filmes;
select * from filmes;
insert into filmes values
(default, 'Bastardos Inglorios', 'Quentin Tarantino', 'Drama', 152, '18 anos'),
(default, 'Transformers','Michael Bay', 'Ação', 144, '10 anos');

 

drop table filmes



