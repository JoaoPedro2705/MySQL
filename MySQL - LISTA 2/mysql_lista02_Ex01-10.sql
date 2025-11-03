create database ecommerce
default character set utf8mb4
default collate utf8mb4_general_ci;

use ecommerce;

create table produtos(
id int not null auto_increment,
nome varchar(50),
preco decimal(4,2),
primary key (id)
)default charset = utf8mb4;

desc produtos;
select * from produtos;


alter table produtos
add column descricao varchar(100) after nome;
insert into produtos values
(default,'Camiseta', 'Camiseta de Algodão, Tamanho M',29.90);

alter table produtos
drop column descricao;
 
 create table clientes(
 id int not null auto_increment,
 nome varchar(50),
 primary key (id)
 )default charset = utf8mb4;
 
 desc clientes;
select * from clientes;
 insert into clientes values
 ('joselimas12@hotmail.com',default,'Jose Caio Lima',5190125577),
 ('natalia95vic20@gmail.com',default,'Natalia Victoria',5591274631);
 
alter table clientes
add column email varchar(100) first,
add column telefone bigint after nome;

alter table clientes
modify column telefone bigint unsigned;

alter table clientes
rename to usuarios;

select * from usuarios;

drop table clientes;
drop table usuarios