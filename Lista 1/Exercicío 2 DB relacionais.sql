create database db_moveis;

use db_moveis;
create table tb_produtos (
id bigint (8) auto_increment,
nome varchar (30) not null,
categoria varchar (30)not null,
altura float not null,
largura float not null,
valor double not null,
primary key(id)
);

select * from tb_produtos;

INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('Geladeira', 'Eletrodomestico', '1.90', '0.5', '3560.50');
INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('Cômoda', 'Madeira', '1.0', '1.2', '479.99');
INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('Mesa', 'Cozinha', '0.4', '2.0', '1000');
INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('Guarda-roupa', 'Madeira', '2.0', '3.1', '4000');
INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('Puff', 'Sala', '0.40', '0.30', '60.00');
INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('Escrivaninha', 'Vidro', '0.50', '1.0', '250.00');
INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('Fogão', 'Eletrodoméstico', '1.0', '0.5', '350.88');
INSERT INTO `db_moveis`.`tb_produtos` (`nome`, `categoria`, `altura`, `largura`, `valor`) VALUES ('TV', 'Eletrônicos', '44', '73', '1299.99');

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set valor=350 where id=6;



