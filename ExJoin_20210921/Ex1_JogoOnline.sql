CREATE database db_generation_game_online
use db_generation_game_online

create table tb_classe(
idclasse bigint(5) auto_increment,
nomeclasse varchar(25) not null,
ativo boolean, 
primary key(idclasse)
)

create table tb_personagem(
idperso bigint(5) auto_increment,
idclasse bigint,
nomepersonagem varchar(25) not null,
vida decimal not null,
ataque bigint not null,
defesa bigint not null,
ativo boolean, 
PRIMARY KEY(idperso),
FOREIGN KEY (idclasse) REFERENCES tb_classe(idclasse)
)


insert into  tb_classe(nomeclasse, ativo) Values ("Arqueiro", true)
insert into  tb_classe(nomeclasse, ativo) Values ("Cavaleiro", true)
insert into  tb_classe(nomeclasse, ativo) Values ("Mago", true)
insert into  tb_classe(nomeclasse, ativo) Values ("Druida", true)
insert into  tb_classe(nomeclasse, ativo) Values ("Gatuno", true)

insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Tronte", 1, 1000, 1500, 500, true)
insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Mayra", 2, 2000, 5000, 2500, true)
insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Sayu", 3, 1500, 2000, 5000, true)
insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Morgana", 3, 3000, 2500, 3000, true)
insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Erik", 1, 5000, 5000, 5000, true)
insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Kaira", 5, 500, 7000, 1500, true)
insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Raej", 4, 8000, 1500, 4500, true)
insert into  tb_personagem(nomepersonagem, idclasse, vida, ataque, defesa, ativo) Values ("Caira", 3, 10000, 7000, 7000, true)

SELECT * FROM tb_personagem WHERE ataque > 2000
SELECT * FROM tb_personagem WHERE defesa > 1000 and defesa < 2000

SELECT * FROM tb_personagem 
inner join tb_classe on tb_classe.idclasse = tb_personagem.idclasse
where tb_personagem.idclasse = 1


