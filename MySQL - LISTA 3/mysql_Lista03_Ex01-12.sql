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

update alunos
set turma = '9A'
where id like  '3';

update alunos
set turma = '8A'
where id like  '1';

SET SQL_SAFE_UPDATES = 0;

insert into alunos values
(default, 'Juan Carlos','2006/02/11','8B','juan.carlos@email.com'),
(default,'Yana Suzan','2005/11/25','8A','yana.suzan@email.com'),
(default,'Hiago Mendes','2007/07/13','8B','hiago.mendes@email.com'),
(default,'Natalia Vieira','2005/04/16','8A','natalia.vieira@email.com'),
(default,'Gustavo Fagundes','2004/12/10','8B','gustavo.fagundes@email.com');

use escola;

truncate table alunos;
truncate table professores;
SET SQL_SAFE_UPDATES = 0;

update alunos
set  email = 'joaosilva@novoemail.com'
where id like 1;


delete from alunos
where id = 5;

update alunos
set  nascimento =  '2004/03/15'
where id like 1;

update alunos
set  nascimento =  '2005/02/11'
where id like 2;

update alunos
set  nascimento =  '2004/11/25'
where id like 3;

update alunos
set  nascimento =  '2006/07/13'
where id like 4;

update alunos
set  nascimento =  '2004/04/16'
where id like 5;

update alunos
set  nascimento =  '2003/12/10'
where id like 6;

insert into alunos(id,nome,nascimento,turma) values
(default,'Endrick Marlom','2005/10/05','8B');

delete from alunos
where email is null;

insert into professores values
(default,'João Pedro','Matematica',10000.00),
(default,'Mariana Huff','Geografia',4000.00);

select * from professores;

update professores
set salario = salario * 1.10
where id = 1;

update professores
set salario = salario * 1.10
where id = 2;

update professores
set salario = salario * 1.10
where id = 3;

update professores
set salario = salario * 1.10
where id = 4;

delete from professores
where id = 1;

delete from professores
where id = 2;

delete from professores
where id = 3;

insert into professores values
(default,'Yago Nunes','Gerente',7500.00);
