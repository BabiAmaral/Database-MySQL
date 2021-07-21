create database db_escola;

use db_escola;
create table tb_estudantes (
id bigint (8) auto_increment,
rm varchar(10) not null,
nome varchar(40) not null,
idade int not null,
sala int not null,
nota int not null,
primary key(id)
);

select * from tb_estudantes;

INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('1', '731112', 'Babi', '9', '4', '10');
INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('2', '45555', 'Joao Vitor', '7', '5', '4');
INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('3', '88888', 'Gabs', '10', '6', '8');
INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('4', '122221', 'Sam', '12', '2', '9');
INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('5', '89999', 'Camis', '8', '1', '7');
INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('11111', 'Nat', '6', '10', '6');
INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('222222', 'Rafael', '16', '3', '8');
INSERT INTO `db_escola`.`tb_estudantes` (`rm`, `nome`, `idade`, `sala`, `nota`) VALUES ('33333', 'Eliana', '12', '2', '9');

select * from tb_estudantes where nota>7;
select * from tb_estudantes where nota<7;

update tb_estudantes set sala='5' where id=6;

 