use db_rh;
Create table tb_funcionaries(
id int auto_increment,
nome varchar(30),
idade int,
cpf varchar (11),
salario double,
funcao varchar (20),
primary key (id)
);
insert into tb_funcionaries (nome, idade, cpf, salario, funcao) values ("Babi",18,"12345678910", 4000, "Dev. Java Junior");
insert into tb_funcionaries (nome, idade, cpf, salario, funcao) values ("Eliana",40, "09876543211", 1100,"atendente");
insert into tb_funcionaries (nome, idade, cpf, salario, funcao) values ("Natalia", 21, "56789031213",3000,"Tradutora de Espanhol");
insert into tb_funcionaries (nome, idade, cpf, salario, funcao) values ("Leh",26, "56666666666", 6000, "Supervisora");
insert into tb_funcionaries (nome, idade, cpf, salario, funcao) values ("Thi Mendes", 23, "0987654323", 1200, "Dev. Java Jr");

SELECT * FROM db_rh.tb_funcionaries;

SELECT * FROM db_rh.tb_funcionaries where salario <2000;

SELECT * FROM db_rh.tb_funcionaries where salario >2000;

update tb_funcionaries set nome="João Junior" where id=5;






