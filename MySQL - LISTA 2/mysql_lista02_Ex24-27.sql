create database restaurante
default character set utf8mb4
default collate utf8mb4_general_ci;

use restaurante;

create table pratos(
nome varchar(50),
descricao varchar(50),
preco decimal (10,2)
)default charset = utf8mb4;

desc pratos;
select * from pratos;

alter table pratos
add column id int not null auto_increment first,
add primary key (id);

insert into pratos values
(default,'Strognoff De Frango','Peito de frango em cubo, molho strognoff',30.00);








drop table pratos;