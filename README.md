# Exercicio3

INSTRUÇÕES:

Execute no Mysql Workbench o Script a seguir para que seja criada a tabela utilizada:

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

Altere as configurações do Arquivo Conexao.cs para que seja utilizado o servidor onde foi criado o banco de dados.

Caso ainda hajam erros, clicar com o botão direito em Default.aspx e Definir como página inicial e recompilar o projeto
