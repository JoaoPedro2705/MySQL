create database livraria
default character set utf8mb4
default collate utf8mb4_general_ci;

use livraria;

create table livros(
titulo varchar(50),
autor varchar(50),
ano_publicacao year(4)
)default charset = utf8mb4;

desc livros;
select * from livros;

alter table livros
add column id int not null auto_increment first,
add primary key (id);
ALTER TABLE livros
add column estoque int(0);

insert into livros values
(default,'Vampiros Do Mal','Stephanie Mayers',2005,120),
(default,'Querido Jonas','Nicoly Sparks',2009,85),
(default,'Fazendo Meu Cinema','Paola Pinho',2000,432);




drop table if exists livros;