CREATE database db_pizzaria_legal
use db_pizzaria_legal

create table tb_categoria(
idcategoria bigint(2) auto_increment,
nomecategoria varchar(25) not null,
ativo boolean, 
primary key(idcategoria)
)

create table tb_pizza(
idpizza bigint(3) auto_increment,
idcategoria bigint,
nomepizza varchar(25) not null,
preco float not null,
ativo boolean, 
PRIMARY KEY(idpizza),
FOREIGN KEY (idcategoria) REFERENCES tb_categoria(idcategoria)
)

INSERT INTO tb_categoria(nomecategoria, ativo) 
VALUES ("doce", true),
("salgada", true),
("brotinhodoce", true),
("brotinhosalgada", true),
("gigante", true)

SELECT * FROM tb_categoria

INSERT INTO tb_pizza(idcategoria, nomepizza, preco, ativo) 
VALUES (2, "Calabresa", 50.00, true),
(2, "Mussarela", 50.00, true),
(2, "Marguerita", 55.00, true),
(1, "Romeu e Julieta", 60.00, true),
(4, "Brócolis", 25.00, true),
(4, "Lombo", 25.00, true),
(5, "Frango e Catupiry-GIGANTE", 75.00, true),
(5, "Baiana-GIGANTE", 75.00, true);


SELECT * FROM tb_pizza
where preco > 45

SELECT * FROM tb_pizza
where preco > 29
and preco < 60

SELECT * FROM tb_pizza
where nomepizza like ('%c%')

SELECT * FROM tb_pizza
inner join tb_categoria on tb_categoria.idcategoria = tb_pizza.idcategoria
where tb_pizza.idcategoria = 4


 


