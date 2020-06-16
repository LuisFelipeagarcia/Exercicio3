create database prova1;
use prova1;
create table aluno
(
id int primary key not null auto_increment,
ra varchar(15) not null,
nome varchar(200) not null,
sexo char(2) not null, 
datanasc date not null,
email varchar(200) not null,
log varchar(200) not null,
num int not null,
bairro varchar(200) not null,
complemento varchar(200),
cidade varchar(200) not null, 
uf char(2) not null,
curso varchar(200) not null,
ano_ingress date not null
);