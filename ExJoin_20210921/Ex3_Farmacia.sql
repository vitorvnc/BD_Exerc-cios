create database db_genaration_game_online;

USE db_game_leo

CREATE TABLE tb_classe (
id_usuario INT NOT NULL AUTO_INCREMENT,
UNIQUE (id_usuario),
nome VARCHAR (200),
poder VARCHAR(20) NOT NULL,
ataque INT,
defesa INT,
PRIMARY KEY (id_usuario)
)

SELECT * FROM tb_classe;

INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Choque" ,80 ,40);
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Agua" ,75 ,50);
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Planta" ,85 ,40);
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Fogo" ,70 ,50);
INSERT INTO tb_classe (poder,ataque,defesa) VALUES ("Normal" ,80 ,40);

CREATE TABLE tb_personagem (
id BIGINT(5) NOT NULL AUTO_INCREMENT ,
nome_personagem VARCHAR(30) NOT NULL,
email VARCHAR (40) NOT NULL,
tipo_personagem VARCHAR(10),
level_personagem INT NOT NULL,
id_usuario INT,
PRIMARY KEY (id),
FOREIGN KEY (id_usuario) REFERENCES tb_classe (id_usuario)
)

SELECT * FROM tb_personagem;

INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("Ralf" , "ralf@gmail" ,"Heroi",5);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("Leo" , "leo@gmail" ,"Heroi",30);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("Goka" , "goka@gmail" ,"Mago",12);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("Vina" , "vina@gmail" ,"Medico",33);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("Fury" , "fury@gmail" ,"guerreiro",8);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("rufos" , "rufos@gmail" ,"guerreiro",24);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("jorge" , "jorge@gmail" ,"Heroi",35);
INSERT INTO tb_personagem (nome_personagem,email,tipo_personagem,level_personagem) 
VALUES ("Beta" , "beta@gmail" ,"mago",78);