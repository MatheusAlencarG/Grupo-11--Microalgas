create database projeto;
use projeto;


-- Criação das tabelas do projeto
create table usuario(
idUser int primary key auto_increment,
nome varchar(50) not null,
dtNasc date,
telefoneCel char(13),
telefoneFixo char(13),
email varchar(50) not null,
senha varchar(20) not null
);





create table sensor (
idSensor int primary key auto_increment,
container int
);


-- Adicionando uma coluno fk na tabela sensor
alter table sensor add column fkUsuario int;

-- Referenciando fkUsuario no idUser
alter table sensor add foreign key (fkUsuario) references usuario(idUser);


create table medicoes (
idMedicoes int primary key auto_increment,
temperatura decimal,
horario timestamp,
fkSensor int,
foreign key (fkSensor) references sensor(idSensor)
);

-- Inserindo dados na tabela

insert into usuario values
(null,'leonidas','2001-02-01','(11)945762345', '(11)44445555', 'leonidas@gmail.com', 'senha1234'),
(null,'natanael','1999-12-20','(11)945675341', '(11)55556666', 'natanael@hotmail.com', 'password2020'),
(null,'bruno','1930-05-17','(11)978543217', '(11)88889999', 'bruno@gmail.com', 'bruno2020'),
(null,'elton','1955-10-18','(11)978654326', '(11)11112222', 'elton@bandtec.com.br', '123456789');


insert into sensor values
(null, 6),
(null, 10),
(null, 31),
(null, 54),
(null, 22);

update sensor set fkUsuario = 1 where idSensor = 1;
update sensor set fkUsuario = 2 where idSensor in (2,4);
update sensor set fkUsuario = 3 where idSensor = 5;
update sensor set fkUsuario = 4 where idSensor = 3;



insert into medicoes values
(null, 24, '2020-07-17 10:50:30', 2),
(null, 25, '2020-07-17 11:50:30', 3),
(null, 27, '2020-07-17 12:50:30', 4),
(null, 24, '2020-07-17 13:50:30', 1),
(null, 21, '2020-07-17 14:50:30', 5);


-- select das tabelas


select * from sensor;
select * from medicoes;
select * from usuario;
select * from sensor, medicoes where idsensor = fkSensor;

select sensor.idSensor , medicoes.temperatura 
from sensor, medicoes
where idsensor = fkSensor;

select usuario.* , sensor.idSensor
from usuario, sensor
where  idUser = fkUsuario and idSensor in (2,4);

select usuario.* , sensor.idSensor
from usuario, sensor
where  idUser = fkUsuario and idSensor = 3;

select usario.* , sensor.idSensor 
from usuario, sensor
where  idUser = fkUsuario;