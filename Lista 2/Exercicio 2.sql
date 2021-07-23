/*
Atividade 2
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal,
 onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria
 para se trabalhar com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos
 para se trabalhar com o serviço dessa pizzaria.
(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
*/
create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categoria(
id_categoria int auto_increment not null,
tipo varchar (255) not null,
tamanho varchar(50) not null,
formato varchar (100) not null,
primary key (id_categoria)
);

create table tb_pizza(
id_pizza int not null auto_increment,
sabor varchar (200) not null,
ingredientes varchar (200) not null,
borda_recheada bit not null,
preco float not null,
fk_categoria int,
primary key (id_pizza),
foreign key (fk_categoria) REFERENCES tb_categoria(id_categoria)

);

insert into tb_categoria (tipo, tamanho, formato)
values
('doce', 'brotinho', 'redonda'),
('salgada', 'grande', 'redonda'),
('salgada', 'gigante', 'quadrada'),
('doce', 'grande', 'quadrada');

insert into tb_pizza (sabor, ingredientes, borda_recheada, preco, fk_categoria )
values
('calabresa', 'calabresa em rodelas, cebola, molho', 1 , 32.50, 2),
('chocolate', 'chocolate derretido com granulado', 0, 25.00, 1),
('frango com catupiry', 'frango, catupiry, azeitona, queijo', 1, 80.00, 3),
('bananada', 'banana, leite condensado, queijo', 0, 40.00, 4),
('marguerita', 'queijo, margericão, tomate', 0, 30.00, 2);


select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "%C%";
select * from tb_pizza inner join tb_categoria on tb_pizza.fk_categoria = tb_categoria.id_categoria; 
select * from tb_pizza inner join tb_categoria on tb_pizza.fk_categoria = tb_categoria.id_categoria and tb_categoria.id_categoria=2;