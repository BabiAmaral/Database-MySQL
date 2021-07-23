/*
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte 
nome db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game. 

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga  exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos 
relevantes da classe para se trabalhar com o serviço desse  game Online.
Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos 
funcionários para se trabalhar com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
Faça um select  utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre  tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id_classe int not null auto_increment,
nome_classe VARCHAR(255),
habilidade VARCHAR(255),
nivel varchar(100),
primary key(id_classe)
);

create table tb_personagem(
id_personagem int not null auto_increment,
nome_personagem varchar(255),
poder_de_ataque int not null,
poder_de_defesa int not null,
estatistica varchar(255) not null,
cor_de_cabelo varchar(255),
equipamento varchar (255),
fk_classe int,
primary key(id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)

);

insert into tb_classe (nome_classe,habilidade,nivel) 
values 
('Bardos', 'Arte, talentos de imitações, disfarces', 'avançado'),
('Guerreiro', 'Lutas','medio'),
('Monge', 'sabedoria','avançado');
insert into tb_personagem (nome_personagem,poder_de_ataque,poder_de_defesa, estatistica, cor_de_cabelo, equipamento, fk_classe)
values
('Max Nik', 1500, 800, 'inteligência', 'Preto', 'adagas',3),
('Rafa', 3000, 1500, 'força', 'Vermelho', 'armadura',2),
('Suzy', 2200, 1000, 'percepção', 'roxa', 'Instrumento musical',1),
('Jovi', 5000, 1100, 'força', 'azul', 'espada', 2),
('Merlin', 1000, 2000, 'inteligência', 'marrom', 'violino',1);


select * from tb_personagem where poder_de_ataque>2000;
select * from tb_personagem where poder_de_defesa>1000 and poder_de_defesa<2000;
select * from tb_personagem where nome_personagem like "%C%";
select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.fk_classe; 
select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.fk_classe where tb_personagem.fk_classe=1; 





