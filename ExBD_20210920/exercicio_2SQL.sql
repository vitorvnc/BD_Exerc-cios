CREATE database db_ecommerce

use db_ecommerce;

create table produtos(
id bigint(5) auto_increment,
cdbarras bigint(12),
nome varchar(25) not null,
preco decimal not null,
ativo boolean, 
primary key(id)
)

insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "Pizza", 2500, false)
insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "martelo", 10000, false)
insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "chinelo", 5600, false)
insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "aspirador de pó", 9000, false)
insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "maçarico", 411, false)
insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "piscina de 2000L", 23, false)
insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "caixa de som JBL", 8000, false)
insert into produtos(cdbarras, nome, preco, ativo) Values ("123456789000", "franquia monster dog", 1200, false)

SELECT * FROM produtos WHERE preco > 500
SELECT * FROM produtos WHERE preco < 500

UPDATE  produtos set nome="Brinquedo de cachorro", preco=50, ativo=true
 where id=8; 