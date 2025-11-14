create database musica
default character set utf8mb4
default collate utf8mb4_general_ci;

use musica;

create table albuns(
id int not null auto_increment,
nome varchar(50),
artista varchar(50),
ano_lancamento int(50),
genero varchar(50),
primary key (id)
)default charset = utf8mb4;

desc albuns;
select * from albuns;
insert into albuns values
(default, 'Adventure of Lifetime','Coldplay',2015, 'Pop Rock'),
(default, 'Anti Amor','Gustavo Mioto',2017, 'Sertanejo');

