create database infobeto
default character set utf8mb4
default collate utf8mb4_general_ci;

use infobeto;

 create table clientes(
 id_cliente varchar(10),
 nome_completo text,
 telefone int
);

select * from clientes; 
desc clientes;

insert into clientes values
('JOAO','joao silva','99887766'),
('maria','Maria(vizinha)','88776655'),
('PEDRO','PEDRO SOUZA','77665544'),
('JOAO','Joao Silva','99887766'),
('ana','Ana C.',NULL);

set SQL_SAFE_UPDATES = 0;
  
update clientes
set id_cliente = 21
where id_cliente = 'JOAO';
  
update clientes 
set id_cliente = 22
where id_cliente = 'maria';
  
update clientes 
set id_cliente = 23
where id_cliente = 'PEDRO';
  
update clientes
set id_cliente = 24
where id_cliente = 'ana';
  
update clientes
set id_cliente = 29
where id_cliente = 'JOAO' and id_cliente != 21;

DELETE FROM clientes WHERE id_cliente = 21 LIMIT 1;

alter table clientes
modify column id_cliente int not null auto_increment,
add primary key (id_cliente);

alter table clientes 
modify column nome_completo varchar (50) not null;
  
alter table clientes
modify column telefone varchar (20);
  
update clientes
set nome_completo = trim(nome_completo);
  
update clientes
set nome_completo = upper(nome_completo);
  
update clientes
set telefone = 99112233
where telefone  is NULL;  
-- delete from clientes
-- where id_cliente = 29;
  
insert into clientes (id_cliente, nome_completo, telefone) values (25,'PAULO GOMES','99443322');

 create table servicos(
 servico_id int,
 id_cliente_ref varchar(50),
 equipamento varchar(100),
 defeito_relatado text,
 data_entrada varchar(20),
 valor_servico varchar(50)
 );
 
 desc servicos;
 select * from servicos;
 
 insert into servicos values
 (1,'JOAO','Notbook Dell','nao liga','05/10/2024','150.00'),
 (2,'maria','Celular Sansung','Tela quebrada','06/10/2024','R$ 300,00'),
 (3,'PEDRO','PC Gamer','fonte keimada','06-10-2024','R$ 100,00'),
 (4,'JOAO','Notbook Dell','formatar','07/10/2024','120'),
 (5,'paulo','Tablet','nao carrega','08/10/2024','N/A');
 
alter table servicos
modify column servico_id int not null auto_increment,
add primary key (servico_id);

update servicos set id_cliente_ref = 21 where id_cliente_ref = 'JOAO';
update servicos set id_cliente_ref = 22 where id_cliente_ref = 'MARIA';
update servicos set id_cliente_ref = 23 where id_cliente_ref = 'ANA';
update servicos set id_cliente_ref = 24 where id_cliente_ref = 'PEDRO';
update servicos set id_cliente_ref = 25 where id_cliente_ref = 'PAULO';
  
alter table servicos modify column id_cliente_ref int not null;

alter table servicos
add constraint fk_clientes
foreign key (id_cliente_ref) references
clientes(id_cliente);

update servicos
set data_entrada = str_to_date(data_entrada, '%d/%m/%Y')
where data_entrada like '%/%/%';

update servicos
set data_entrada = str_to_date(data_entrada, '%d-%m-%Y')
where data_entrada like '%-%-%' and length(data_entrada) = 10 and data_entrada not like '2024-%';

alter table servicos
modify column data_entrada date;

update servicos 
set valor_servico = '0'
where valor_servico = 'N/A';

update servicos set valor_servico = replace(valor_servico, 'R$', '');
update servicos set valor_servico = replace(valor_servico, ',', '.');

alter table servicos modify column valor_servico decimal(10,2);
alter table servicos
modify column valor_servico decimal(10,2);
  
update servicos
set defeito_relatado = 'não carrega'
where defeito_relatado = 'não carrega';
  
update servicos
set defeito_relatado = 'Notebook Dell'
where defeito_relatado ='Notbook Dell';
  
update servicos
set defeito_relatado = 'Samsung'
where defeito_relatado = 'Sansung';
  
update servicos
set defeito_relatado = 'Queimada'
where defeito_relatado = 'keimada';
  
update servicos
set id_cliente_ref = 21
where id_cliente_ref = 29;
  
update servicos
set valor_servico = 0
where valor_servico is null;

update servicos 
set data_entrada = '2024-10-05' 
where data_entrada = '2024-10-05';
  
update servicos
set data_entrada = '2024-10-06'
where data_entrada ='2024-10-06';
  
update servicos
set data_entrada = '2024-10-06'
where data_entrada = '2024-10-06';
  
update servicos
set data_entrada = '2024-10-07'
where data_entrada = '2024-10-07';
  
update servicos
set data_entrada = '2024-10-08'
where data_entrada = '2024-10-08';
  
drop table clientes;
drop table servicos;