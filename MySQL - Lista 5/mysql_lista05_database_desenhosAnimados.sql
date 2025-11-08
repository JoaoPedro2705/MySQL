create database desenhos_animados;

use desenhos_animados;

create table desenhos (
    id int auto_increment primary key,
    nome varchar(100) not null,
    criador varchar(100),
    ano_lancamento year
);

create table personagens (
    id int auto_increment primary key,
    nome varchar(100) not null,
    idade int,
    desenho_id int,
    foreign key (desenho_id) references desenhos(id)
); 

insert into desenhos values
(default,'Apenas Um Show','JG. Quintel',2010),
(default,'Family Guy','Seth MacFarlane',1999),
(default,'Hora de Aventura','Pendleton Ward',2010),
(default,'Gravity Falls','Alex Hirsch',2012),
(default,'Carros 2','John Lasseter',2011);

insert into personagens (nome, idade, desenho_id) 
values('Mordecai',23,1),
	  ('Peter Griffin',43,2),
      ('Jake',28,3),
      ('Wendy',15,4),
      ('Holley Caixa de Brita',32,5);
      
 select * from personagens;
 select * from desenhos;
 -- 1)    
 select per.nome as personagens, des.nome as desenho
  from personagens as per
 join desenhos as des on per.desenho_id = des.id;
 
 -- 4)
 insert into personagens (nome, idade)
 values ('Cadu Maverick',17);
 
 select per.nome as personagem, des.nome as desenho
 from personagens as per
 left join desenhos as des on per.desenho_id = des.id;
 
 -- 5)
 insert into desenhos values
 (default,'Rei Leão','George Scribner',1994);
 
 select des.nome as desenho, per.nome as personagen
 from desenhos as des
 left join personagens as per on des.id = per.desenho_id;
 
 -- 10)
 select per.nome as personagem, des.nome as desenho
 from personagens as per
 join desenhos as des on per.desenho_id = des.id
 where per.idade > 18;
 
 -- 13)
 select per.nome as personagem, des.nome as desenho
 from personagens as per
 join desenhos as des on per.desenho_id = des.id
 order by des.nome asc;
 
 -- 16)
 insert into personagens (nome, idade, desenho_id)
 values ('Rigby',22,1);
 
 select des.nome as desenho, count(per.id) as total_personagens
 from desenhos as des
 left join personagens as per on des.id = per.desenho_id
 group by des.nome;
 
 -- 17)
 select des.nome as desenho, avg(per.idade) as media_idade
 from desenhos as des
 join personagens as per on des.id = per.desenho_id
 group by des.nome;
 
 -- 20)
 select des.nome as desenho 
 from desenhos as des
 join personagens as per on des.id = per.desenho_id
 group by des.nome
 having avg(per.idade) > 30;
 
 