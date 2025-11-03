create database rh
default character set utf8mb4
default collate utf8mb4_general_ci;

use rh;

create table funcionarios(
nome varchar(50),
cargo varchar(50),
salario decimal(6,2)
)default charset = utf8mb4;


desc funcionarios;
select * from funcionarios;

alter table funcionarios
add column id int not null auto_increment first,
add primary key (id);

insert into funcionarios values
(default,'Helena Fatíma','Financeiro',4500.00);

alter table funcionarios
rename column salario to remuneracao


