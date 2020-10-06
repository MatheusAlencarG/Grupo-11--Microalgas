use sprint1;
create table musica ( idmusica varchar(40) primary key, artista  varchar (40), genero varchar (40));
select * from musica;
-- adicionar titulo na tabela
alter table musica add titulo varchar(50);
-- mostrar titulo e artista
select artista, titulo from musica;
-- adicionar musicas 
insert into musica values ( '1234', 'BK', 'Rap', 'Castelos e ruinas'),
				('1235', 'BK', 'Rap', 'Antes dos gigantes chegarem'),
                ('1236', 'Djonga', 'Rap', 'Santa ceia'),
                ('1237', 'Marilia mendonça', 'Sertanejo', 'Alo porteiro'),
                ('1238', 'Renato russo', 'Rock', 'Tempo perdido');
-- exibir apenas dados das musicas de rap
select * from musica where genero like 'rap';
-- exibir apenas dados das musicas do BK
select * from musica where artista like 'bk';
-- ordenar pelo titulo das musicas 
select * from musica order by titulo;
-- ordenar pelo artista em ordem decrescente
select * from musica order by titulo desc;
-- exibir musica cujo o titulo começe com A
select * from musica where titulo like 'a%';
-- exibir na tabela artista que termine com a letra a
select * from musica where artista like '%a';
-- exibir na tabela uma musica cujo a segunda letra é L
select * from musica where titulo like '_L%';
-- exibir na tabela uma musica cujo a penultima letra é R
select * from musica where titulo like '%r_';
create table album(idAlbum  int auto_increment  primary key , nome varchar(40), gravador varchar(40));
ALTER TABLE musica ADD COLUMN fkAlbum int;
ALTER TABLE musica ADD foreign key (fkAlbum) references album(idAlbum);
insert into album values (null, 'preguiça1', 'sony'),
(2, 'atividade', 'warner'),
(3, 'banco de dados', 'universal');
update musica set fkAlbum = 1 where idmusica in (' 1234', '1237');
update musica set fkAlbum = 2 where idmusica in (' 1235', '1236');
update musica set fkAlbum = 3 where idmusica ='1238';
Select musica.titulo, musica.fkAlbum, album.gravador from musica, album where fkAlbum = idAlbum;	
