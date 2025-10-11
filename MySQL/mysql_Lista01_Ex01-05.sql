create database escola
default character set utf8mb4
default collate utf8mb4_general_ci;

use escola;

create table alunos(
id int not null auto_increment,
nome varchar(50),
nascimento date,
turma varchar(8),
email varchar(100),
primary key (id)
)default charset = utf8mb4;

desc alunos;
select * from alunos;
insert into alunos values
(default, 'João Silva','2005/03/15','8A','joao.silva@email.com');

create table professores(
id int not null auto_increment,
nome varchar(50),
disciplina varchar(50),
salario double,
primary key (id)
)default charset = utf8mb4;

desc professores;
select * from professores;
insert into professores values
(default,'Kassia Milene','Geografia','2500.00'),
(default,'Victor Nunes','Matematíca','3800.00');

drop table professores;


