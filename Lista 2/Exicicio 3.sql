/*
Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará
 com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar
 com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste 
farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são 
cosméticos).
*/
create database db_farmacia_do_bem;

use db_farmacia_do_bem;
create table tb_categoria(
id_categoria int auto_increment not null,
tipo varchar (200) not null,
uso varchar (200)not null,
continuo bit,
primary key (id_categoria)
);

create table tb_produto(
id_produto int auto_increment not null,
nome varchar(200) not null,
validade varchar(200) not null,
tamanho varchar(200) not null,
valor float not null,
fk_categoria int,
primary key(id_produto),
foreign key (fk_categoria) REFERENCES tb_categoria(id_categoria)
);
insert into tb_categoria (tipo, uso, continuo)
values
('Anti-alergico', 'nasal', 1),
('Anti-inflamatório', 'oral', 0),
('Anti-biótico', 'oral', 0),
('Anti-alergico', 'inalatório', 0);

insert into tb_produto (nome, validade, tamanho, valor, fk_categoria)
values
('Loratadina', '12/12/2022', '30 comprimidos', 25.00, 4),
('Nimesulida', '13/08/2022','10 comprimidos',9.00, 2),
('Avamys', '30/09/2023', '50 mg',60.00, 1),
('Amoxilina', '04/01/2022', '100g',90.00, 3),
('Clenil', '20/03/2024','200mg', 120.00, 4);

select * from tb_produto where valor > 50 ;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%B%";
select * from tb_produto inner join tb_categoria on tb_produto.fk_categoria = tb_categoria.id_categoria; 
select * from tb_produto inner join tb_categoria on tb_produto.fk_categoria = tb_categoria.id_categoria and tb_categoria.id_categoria=2;






