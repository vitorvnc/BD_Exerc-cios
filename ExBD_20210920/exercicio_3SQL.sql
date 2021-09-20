CREATE database db_escola

use db_escola;

create table estudantes(
id bigint(5) auto_increment,
documento bigint(11),
nome varchar(25) not null,
endereco varchar(40) not null,
nota decimal not null,
ativo boolean, 
primary key(id)
)

insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Pedrinho", "Rua lelele", 8, true)
insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Luana", "Rua asasasasa", 7, true)
insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Grazi", "Rua brelele", 2, true)
insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Reinaldo", "Rua astra", 5, true)
insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Angel", "Rua alola", 6, true)
insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Liliane", "Rua titia", 9, false)
insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Maria", "Rua estewart", 1, true)
insert into  estudantes(documento, nome, endereco,nota, ativo) Values ("12345678900", "Raul", "Rua fantasma", 2, true)

SELECT * from estudantes WHERE nota > 7;
SELECT * from estudantes WHERE nota < 7;

UPDATE estudantes set nota=10, ativo=true
 where id=8; 
