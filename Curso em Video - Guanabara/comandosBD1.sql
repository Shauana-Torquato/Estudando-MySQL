create database cadastro
default character set utf8mb4
default collate utf8mb4_unicode_ci;

use cadastro;
drop table pessoas;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum ('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar (20) default 'Brasil',
primary key (id)
) default charset = utf8mb4;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'joana', '1962-05-03', 'F', '68.5', '1.53', default);

insert into pessoas values
(default, 'alfredo', '2001-10-03', 'F', '68.5', '1.53', 'Portugal'),
(default, 'alfredique', '2011-05-23', 'F', '68.5', '1.53', default),
(default, 'janaina', '1995-05-03', 'M', '68.5', '1.53', 'Espanha');

select * from pessoas;

describe pessoas;

alter table pessoas
add column profissao varchar (10);

alter table pessoas
drop column profissao;

 alter table pessoas
add column profissao varchar (10) after nome;

alter table pessoas
add column codigo int first;

alter table pessoas
modify column profissao varchar (20) not null default '';

alter table pessoas
change column atual profissao_atual varchar (20) not null default '';

alter table pessoas
rename to padawan;

describe padawan;