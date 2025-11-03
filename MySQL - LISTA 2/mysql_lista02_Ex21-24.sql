create database streaming
default character set utf8mb4
default collate utf8mb4_general_ci;

use streaming;

create table series(
id int not null auto_increment,
titulo varchar(50) unique,
genero varchar(50),
num_temporadas int(0),
primary key (id)
)default charset = utf8mb4;

desc series;
select * from series;

insert into series values
(default,'One Piece','Ação e Aventura',27),
(default,'Breaking Bad','Drama e Crime',5);


drop table series