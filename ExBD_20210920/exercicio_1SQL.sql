CREATE database db_RH

use db_RH;

create table funcionario(
id bigint(5) auto_increment,
documento bigint(11),
nome varchar(25) not null,
endereco varchar(40) not null,
salario decimal not null,
ativo boolean, 
primary key(id)
)


insert into  funcionario(documento, nome, endereco,salario, ativo) Values ("12345678900", "Joao", "Rua xyz", 1200, false)
insert into  funcionario(documento, nome, endereco,salario, ativo) Values ("12345678900", "Zezinho", "Rua zyx", 2500, true)
insert into  funcionario(documento, nome, endereco,salario, ativo) Values ("12345678900", "Maria", "Rua da balsa", 400, true)
insert into  funcionario(documento, nome, endereco,salario, ativo) Values ("12345678900", "Lucas", "Rua marca", 5000, true)
insert into  funcionario(documento, nome, endereco,salario, ativo) Values ("12345678900", "Arnaldo", "Rua lilili", 800, false)

SELECT * from funcionario WHERE salario > 2000;

update funcionario set nome="Boris Casoy", ativo=true
 where id=1; 