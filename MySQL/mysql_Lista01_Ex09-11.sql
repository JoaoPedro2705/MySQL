create database empresa
default character set utf8mb4
default collate utf8mb4_general_ci;

use empresa;

create table funcionarios(
id int not null auto_increment,
nome varchar(50),
cargo varchar(50),
salario double,
data_admissao date,
primary key (id)
)default charset = utf8mb4; 

desc funcionarios;
select * from funcionarios;
insert into funcionarios values
(default, 'Ingrid Vargas', 'Marketing', '3000.00', '2025/10/08');