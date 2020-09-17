create database projeto;
use projeto;

create table cadastro(
idCadastro int primary key auto_increment,
nome varchar(50) not null,
dtNasc date,
email varchar(50),
senha varchar(20),
telefone char(13)
);

insert into cadastro values
(null,'leonidas','2001-02-01','espart@gmail.com','12345678','(11)945762345'),
(null,'natanael','1999-12-20','cruel@gmail.com','senha8','(11)945675341'),
(null,'bozo','1930-05-17','alo@hotmail.com','pipoca','(11)978543217'),
(null,'elton','1955-10-18','jonh@gmail.com','coca','(11)978654326');

select * from cadastro;
select * from cadastro order by nome desc;
select * from cadastro order by nome asc;
select email from cadastro;
select * from cadastro where nome like "%_o";
select * from cadastro where nome like "%a_";
select * from cadastro where nome like "n_%";
select * from cadastro where nome like "_l%";

create table login(
idLogin int primary key auto_increment,
email varchar(50),
senha varchar(20)
);

insert into login values
(null,'espart@gmail.com','12345678'),
(null,'cruel@gmail.com','senha8'),
(null,'alo@hotmail.com','pipoca'),
(null,'jonh@gmail.com','coca');

select * from login;
select * from login order by email desc;
select * from login order by email asc;
select email from login;
select * from login where email like "%_m";
select * from login where email like "%o_";
select * from login where email like "e_%";
select * from cadastro where nome like "_o%";

create table sensores(
idSensor int primary key auto_increment,
container int
);

insert into sensores values
(null,12),(null,22),(null,43),(null,02),(null,16),
(null,45),(null,23),(null,78),(null,87),(null,12),(null,32);

select * from sensores;
select * from sensores order by container desc;
select * from sensores order by container asc; 
select container from sensores;

create table medicoes(
idMedicao int primary key auto_increment,
temperatura decimal,
horario datetime
);

insert into medicoes values
(null,10,'2020-01-01 00:00:00'),
(null,16,'2020-01-01 00:00:00'),
(null,18,'2020-01-01 00:00:00'),
(null,23,'2020-01-01 00:00:00'),
(null,26,'2020-01-01 00:00:00'),
(null,19,'2020-01-01 00:00:00'),
(null,14,'2020-01-01 00:00:00');

select * from medicoes; 
select * from medicoes order by temperatura desc; 
select * from medicoes order by temperatura asc;
select * from medicoes order by horario desc;
select * from medicoes order by horario asc;
select temperatura from medicoes;
select horario from medicoes;



