create database biblioteca
default character set utf8mb4
default collate utf8mb4_general_ci;

use biblioteca;

create table livros(
id int not null auto_increment,
titulo varchar(50),
autor varchar(50),
ano_publicacao int,
disponivel boolean,
primary key (id)
)default charset = utf8mb4;

desc livros;
select * from livros;
insert into livros values
(default, 'O Alienista', 'Machado de Assis', 1882, TRUE),
(default, 'The War Time', 'Mitchel Le Fluer', '1959',FALSE),
(default, 'A Bela Flor', 'Jorge Almas', 1579, FALSE);

select titulo, autor, ano_publicacao,
if(disponivel,'Sim','Não') as esta_disponivel
from biblioteca.livros;

drop table livros;