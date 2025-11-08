create database musica;

use musica; 

create table artistas (
  id int primary key auto_increment,
  nome varchar(100) not null,
  genero varchar(50)
);

create table albuns (
  id int primary key auto_increment,
  titulo varchar(100) not null,
  ano_lancamento int,
  artista_id int,
  foreign key (artista_id) references artistas(id)
);

insert into artistas values
(default,'Coldplay','Rock Pop'),
(default,'Sabrina Carpenter','Pop'),
(default,'Mc Meno K','Funk'),
(default,'Ana Castela','Sertanejo'),
(default,'Kendrick Lamar','Hip Hop');

insert into albuns (titulo, ano_lancamento, artista_id) values
('Clocks',2003,1),
('Adventure of a Lifetime',2015,1),
('Espresso',2024,2),
('Camisa do Gremio',2020,3),
('A Um 5G de Voce',2025,4),
('Not Like Us',2024,5),
('Humble',2017,5);

select * from artistas;
select * from albuns;

-- 2)
 select alb.titulo as musica, art.nome as artista
 from albuns as alb
 join artistas as art on alb.artista_id = art.id;

-- 6)
 insert into albuns (titulo, ano_lancamento) values
 ('Star Boy',2016);
 
 select alb.titulo as musica, art.nome as artistas
 from albuns as alb
 left join artistas as art on alb.artista_id = art.id;
 
 -- 7)
 insert into artistas values
 (default,'Ice Spice','Rap');
 
 select art.nome as artista, alb.titulo as musica
 from artistas as art
 left join albuns as alb on art.id = alb.artista_id;
 
 -- 11)
 insert into artistas values
 (default,'Haddaway','House Pop');
 
 insert into albuns (titulo, ano_lancamento, artista_id) values
 ('What is Love',1993,7);
 
select alb.titulo as musica, art.nome as artista
from albuns as alb
join artistas as art on alb.artista_id = art.id
where alb.ano_lancamento < 2000;

-- 14)
 select alb.titulo as musica, art.nome as artista
 from albuns as alb
 join artistas as art on alb.artista_id = art.id
 order by alb.ano_lancamento desc;
 
 -- 18)
 insert into albuns (titulo, ano_lancamento, artista_id) values
 ('The Scientist',2002,1),
 ('Paradise',2011,1),
 ('Luther',2024,5),
 ('DNA.',2017,5),
 ('Sua Boca Mente',2025,4),
 ('Olha Onde eu To',2025,4),
 ('Solteiro Forçado',2023,4);
 
 select art.nome as artista, count(alb.id) as total_musicas_lancadas
 from artistas as art
 left join albuns as alb on art.id = alb.artista_id
 group by art.nome
having count(alb. id) > 3;

