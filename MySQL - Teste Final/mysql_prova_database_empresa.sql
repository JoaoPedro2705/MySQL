create database empresa
default character set utf8mb4
default collate utf8mb4_general_ci;

use empresa;

create table departamentos(
id int not null auto_increment,
nome varchar(100),
primary key (id)
)default charset utf8mb4;

create table funcionarios(
id int not null auto_increment,
nome varchar(100),
cargo varchar(100),
salario decimal(10,2),
departamento_id int,
foreign key (departamento_id) references departamentos(id),
primary key (id)
)default charset utf8mb4;


insert into departamentos values
(default,'Marketing'),
(default,'RH'),
(default,'Executivo'),
(default,'Vendas'),
(default,'TI');

insert into funcionarios (nome, cargo, salario, departamento_id) values
('Angelo Ramos','Editor',3500.00,1),
('Carla Vieira','Cenografa',4200.00,1),
('Helio Carlos','Financeiro',4500.00,2),
('Ana Dias','Chefe',8000.00,3),
('Jorge Souza','Consultor',4000.00,3),
('Mariana Fritz','Conselheira',3800.00,4),
('Roberta Fagundes','Segurança de Dados',6500.00,5),
('Hugo Silva','Hardware',3000.00,5);

select * from funcionarios;
select * from departamentos;


set foreign_key_checks  = 1;

drop table funcionarios;
drop table departamentos;

-- 1)
select nome from funcionarios;
-- // 

-- 2)
select nome,cargo from funcionarios where departamento_id like '4';
-- //

-- 3)
select dep.nome as departamento, count(fun.id) as total_funcionarios
 from departamentos as dep
 left join funcionarios as fun on dep.id = fun.departamento_id
 group by dep.nome;
-- // 
 
-- 4)
select fun.nome as funcionario, dep.nome as departamento
from funcionarios as fun
left join departamentos as dep on fun.departamento_id = dep.id;
-- //

-- 5) 
select nome from funcionarios where salario > '5000';
-- //

-- 6)
select fun.nome as funcionario, dep.nome as departamento
from funcionarios as fun
left join departamentos as dep on fun.departamento_id = dep.id
where dep.id  like '1';
-- //

-- 7)
use empresa;

alter table funcionarios
add column data_admissao date;

insert into funcionarios (data_admissao) values
('2017-03-05'),
('2020-11-16'),
('2014-12-21'),
('2012-11-15'),
('2021-05-07'),
('2017-10-28'),
('2022-06-12'),
('2020-04-02');
 

set SQL_SAFE_UPDATES = 0;

use empresa;
update funcionarios
set data_admissao = '2021-11-19'
where id like '1';

update funcionarios
set data_admissao = '2014-04-03'
where id like '2';

update funcionarios
set data_admissao = '2019-12-21'
where id like '3';

update funcionarios
set data_admissao = '2022-10-11'
where id like '4';

update funcionarios
set data_admissao = '2016-02-10'
where id like '5';

update funcionarios
set data_admissao = '2016-07-24'
where id like '6';

update funcionarios
set data_admissao = '2020-04-08'
where id like '7';

update funcionarios
set data_admissao = '2018-09-21'
where id like '8';
 
update funcionarios
set nome = 'Gustavo Meirelles', cargo = 'Gerente', salario = 12000.00, departamento_id = 4
where id like '9';

update funcionarios
set nome = 'Yana Charlotte', cargo = 'Fiscal', salario = 3000.00, departamento_id = 4
where id like '10';  

update funcionarios
set nome = 'Luise Chargas', cargo = 'Fiscal', salario = 3000.00, departamento_id = 4
where id like '11';

update funcionarios
set nome = 'Guilherme Milton', cargo = 'Caixa', salario = 1500.00, departamento_id = 4
where id like '12';

update funcionarios
set nome = 'Flavia Telles', cargo = 'Caixa', salario = 1500.00, departamento_id = 4
where id like '13';

update funcionarios
set nome = 'Amanda Ferri', cargo = 'Orti', salario = 1800.00, departamento_id = 4
where id like '14';

update funcionarios
set nome = 'Ana Clara', cargo = 'Padaria', salario = 2000.00, departamento_id = 4
where id like '15';

update funcionarios
set nome = 'Suellen Vina', cargo = 'Padaria', salario = 2000.00, departamento_id = 4
where id like '16';

-- resposta da 7 aqui
select * from funcionarios where data_admissao between '2020-01-01' and '2022-12-31';
-- //

-- 8)
select * from funcionarios where nome like 'M%';
-- //

-- 9)
select distinct cargo from funcionarios;
-- //

-- 10)
select avg(salario) as media, min(salario) as menor, max(salario) as maior from funcionarios;
-- //

-- 11)
select nome, salario from funcionarios
where salario = (select max(salario) from funcionarios);
-- //

-- 12)
select dep.nome as departamento, count(fun.id) as total_funcionarios
 from departamentos as dep
 left join funcionarios as fun on dep.id = fun.departamento_id
 group by dep.nome;
 
 -- 13)
 insert into funcionarios (nome, cargo, salario, departamento_id, data_admissao) values
('Mauricio Lisca','Supridor',3200.00,4,'2021-06-05');
insert into funcionarios (nome, cargo, salario, departamento_id, data_admissao) values
('Sergio Aguirre','Segurança',2200.00,4,'2018-11-20');

select dep.nome as departamento, count(fun.id) as total_funcionarios
from departamentos as dep
left join funcionarios as fun on dep.id = fun.departamento_id
group by dep.nome
having count(fun.id) > 10;
-- //

-- 14)
update funcionarios
set cargo = 'Analista de Sistemas'
where id like '5';
-- //

-- 15)
delete from funcionarios 
where id = 10;



