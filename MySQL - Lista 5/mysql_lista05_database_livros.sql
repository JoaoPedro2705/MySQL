create database livros;

use livros;

create table autores (
    id int auto_increment primary key,
    nome varchar(100) not null,
    nacionalidade varchar(50)
);

create table livros (
    id int auto_increment primary key,
    titulo varchar(150) not null,
    genero varchar(50),
    autor_id int,
    foreign key (autor_id) references autores(id)
);

insert into autores values
(default,'Machado de Assis','Brasileiro'),
(default,'Adelia Prado','Brasileira'),
(default,'Fernando Pessoa','Portugues'),
(default,'Eduarda Mansilla','Argentina'),
(default,'Elena Ferrante','Italiana'),
(default,'Ben Okri','Nigeriano');

insert into livros (titulo, genero, autor_id) values
('Dom Casmurro','Romance',1),
('Quincas Borba','Literatura',1),
('O Alienista','Literatura',1),
('Bagagem','Poesia',2),
('Livro do Desassossego','Poesia Filosofia',3),
('Cuentos','Contos',4),
('A Amiga Genial','Ficção Literaria',5),
('The Age of Magic','Ficção',6),
('The Famished Road','Fantasia',6);

select * from autores;
select * from livros;

-- 3)    
 select liv.titulo as livro, aut.nome as autor
  from livros as liv
 join autores as aut on liv.autor_id = aut.id;
 
 -- 8)
 insert into livros (titulo, genero)values
 ('O Pequeno Príncipe','Fábula');

 select liv.titulo as livro, aut.nome as autor
 from livros as liv
 left join autores as aut on liv.autor_id = aut.id;
 
 -- 9)
 insert into autores values
 (default,'Victor Hugo','Frances');
 
 select aut.nome as autor, liv.titulo as livro
 from autores as aut
 left join livros as liv on aut.id = liv.autor_id;
 
 -- 12
 select liv.titulo as livro, aut.nome as autor
 from livros as liv
 left join autores as aut on liv.autor_id = aut.id
 where aut.nacionalidade like 'Brasileir%';
 
 -- 15
 select liv.titulo as livro, aut.nome as autor
 from livros as liv
 left join autores as aut on liv.autor_id = aut.id
 order by liv.titulo asc;
 
 -- 19
select aut.nome as autor, count(distinct liv.genero) as quantide_generos
from autores as aut
join livros as liv on aut.id = liv.autor_id
group by aut.id, aut.nome
having count(distinct liv.genero) > 1;
 