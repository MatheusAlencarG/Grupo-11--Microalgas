use sprint1;
	select * from atleta;
	create table pais (id_pais int primary key, nome_pais varchar(40), capital varchar (30));
    select * from pais;
    -- adicionar a coluna na tabela atleta
ALTER TABLE atleta ADD COLUMN fk_pais int;
describe atleta;
-- adicionar o campo fkEmpresa como chave estrangeira na tabela aluno
ALTER TABLE atleta ADD foreign key (fk_pais) references pais(id_pais);
-- inserir dados na tabela pais
insert into pais values (1, 'Estados Unidos', 'Washington'),
(2, 'Reino Unido', 'Londres'),
(3, 'Brazil', 'Brasilia');
select * from pais;
select * from atleta;
update atleta set fk_pais = 1 where idAtleta='2';				
update atleta set fk_pais = 1 where idAtleta in (' 8', '1237', '1123456789', '2123456789');
update atleta set fk_pais = 3 where idAtleta in ('1234', '123456789');
update atleta set fk_pais = 2 where idAtleta='1235';		
select * from atleta, pais where id_pais = fk_pais ;
-- procurar apenas o Brasil
Select atleta.nome, atleta.fk_pais, pais.nome_pais from atleta, pais where fk_pais = id_pais;			
