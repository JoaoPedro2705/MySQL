create database listaquatro
default character set utf8mb4
default collate utf8mb4_general_ci;

use listaquatro;

create table carros(
id int not null auto_increment,
modelo varchar(100),
marca varchar (50),
ano int,
preco decimal(10,2),
cor varchar (30),
vendedor varchar(100),
primary key (id)
)default charset = utf8mb4;

desc carros;

insert into carros values
(default,'Agile Effect','Chevrolet',2014,38000.00,'Branco','Claudia Mendes'),
(default,'Nivus Highline','Volkswagen',2020,120000.00,'Vermelho','Natan Vitor'),
(default,'320i Sport GP','BMW',2019,180000.00,'Preto','Vanderlei Costa'),
(default,'Civic G10','Honda',2021,130000.00,'Chumbo','Larissa Souza'),
(default,'Corolla XEi','Toyota',2019,100000.00,'Branco','Ana Milena'),
(default,'Sonata','Hyundai',2012,65000.00,'Prata','João Pedro'),
(default,'Punto TJET','Fiat',2014,56000.00,'Azul','Mariana Fontes'),
(default,'Fusion Titanium','Ford',2018,105000.00,'Branco','Caroline Menezes'),
(default,'Cerato Koup','KIA',2012,60000.00,'Vermelho','Gabriel Fritz'),
(default,'Maverick','Ford',2025,220000.00,'Preto','Erick Silva');

set SQL_SAFE_UPDATES = 0;

-- selecionar todos os carros
select * from carros;

-- selecionar carro especifico
select * from carros where modelo = 'Civic G10';

-- ordernar por modelo em ordem decrescente
select * from carros order by modelo desc;

-- selecionando colunas especificas
select modelo, preco, cor from carros;

-- filtrar por ano igual ou anterior a 2016
select * from carros where ano <= 2016;

-- usar operadores relacionais
select * from carros where preco > 100000;

-- filtrar por intervalo de preços
select * from carros where preco between 30000 and 100000;

-- combinar condições and / or
select * from carros where marca = 'Chevrolet' and preco < 50000;

-- selecionar carros de marcas especificas
select * from carros where marca in ('Ford','Honda');

-- combinar resultados
select modelo, marca from carros where marca = 'Fiat'
union
select modelo, marca from carros where marca = 'BMW';

-- buscar nomes que começam com N
select * from carros where modelo like 'N%';

-- atualizando elemento da tabela
update carros set cor = 'Verde' where modelo = 'Maverick';

-- remover marcas duplicadas
select distinct marca from carros;

-- contar quantas vendas cada vendedor vendeu
select vendedor, count(*) as total_vendidos from carros group by vendedor;

-- calcular média, menor e maior preço
select avg(preco) as media, min(preco) as menor, max(preco) as maior from carros;


drop table carros;
