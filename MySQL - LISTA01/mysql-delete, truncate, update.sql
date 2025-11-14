-- MANIPULADORES DE LINHAS: UPDATE, DELETE E TRUNCATE
create database megabazar
default character set utf8mb4
default collate utf8mb4_general_ci;

use megabazar;


create table antiquario(
id int not null auto_increment,
categoria varchar(30),
tipo varchar(30),
quantidade int,
ano year,
primary key (id)
)default charset = utf8mb4;

insert into antiquario values
(default,'Múzica','Disco de Viniu',40,1960),
(default,'Espelio','Vrido',20,1980),
(default,'Vingo Games','Fita k7',10,1990),
(default,'Xícara','Argilia',40,1995),
(default,'Bebidja','Vodica',10,1985);

select * from antiquario;

update antiquario
set categoria = 'Música'
where id = '1';

update antiquario 
set categoria = 'Espelho', quantidade = 40, ano = 1999
where id = '2';

update antiquario
set tipo = 'Vidro'
where id = '2';

-- ///////////////////////////////
-- Apaga toda uma linha
delete from antiquario
where ano > 1990
limit 1;

-- ///////////////////////////////////
-- Limpa toda a tabela sem excluir ela
truncate table antiquario;