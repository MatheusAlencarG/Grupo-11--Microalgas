create database projeto;
use projeto;


-- Criação das tabelas do projeto
create table cadastro(
idCadastro int primary key auto_increment,
nome varchar(50) not null,
dtNasc date,
telefone char(13)
);

create table login(
idLogin int primary key auto_increment
);

create table loginCadastro(
  fkLogin int,
  foreign key (fkLogin) references login(idLogin),
  fkCadastro int,
  foreign key (fkCadastro) references cadastro(idCadastro),
  primary key (fkLogin, fkCadastro),
  email varchar(50) not null,
  senha varchar(20) not null
);

create table sensor (
idSensor int primary key auto_increment,
container int
);


create table medicoes (
idMedicoes int primary key auto_increment,
temperatura decimal,
horario timestamp,
fkSensor int,
foreign key (fkSensor) references sensor(idSensor)
);

-- Inserindo dados na tabela

insert into cadastro values
(null,'leonidas','2001-02-01','(11)945762345'),
(null,'natanael','1999-12-20','(11)945675341'),
(null,'bozo','1930-05-17','(11)978543217'),
(null,'elton','1955-10-18','(11)978654326');

insert into login values
(null),
(null),
(null),
(null);

insert into loginCadastro values
(1, 1, 'felipe@gmail.com', 'felipe123'),
(2, 2, 'matheus@bandtec.com.br' , 'senha20'),
(3, 3, 'gabriel@hotmail.com', 'password18'),
(4, 4, 'lucas@yahoo.com', 'senha2020' );

insert into sensor values
(null, 6),
(null, 10),
(null, 31),
(null, 54),
(null, 22);

insert into medicoes values
(null, 24, '2020-07-17 10:50:30', 2),
(null, 25, '2020-07-17 11:50:30', 3),
(null, 27, '2020-07-17 12:50:30', 4),
(null, 24, '2020-07-17 13:50:30', 1),
(null, 21, '2020-07-17 14:50:30', 5);


-- select das tabelas
select * from login;
select * from cadastro;
select * from sensor;
select * from medicoes;
select * from sensor, medicoes where idsensor = fkSensor;
select * from loginCadastro;

select sensor.idSensor , medicoes.temperatura 
from sensor, medicoes
where idsensor = fkSensor;

select * from loginCadastro;

select login.idLogin, cadastro.nome, loginCadastro.email, loginCadastro.senha
from login, cadastro, loginCadastro
where fkLogin = idLogin and fkCadastro = idCadastro;












