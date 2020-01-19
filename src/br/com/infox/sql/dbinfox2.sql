-- Criando o banco de dados
create database dbinfox2;

-- Criando a tabela simples
-- sintaxe, not null obriga o preenchimento do campo
-- dentro dos parenteses delimita a quantidade maxima de caracteres
-- unique quer dizer que não se pode ter dados iguais, por exemplo nomes iguais
create table tbusuario (
iduser int primary key auto_increment,
usuario varchar (50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

-- iserir dados na tabelas (CRUD)
-- Create -> insert
insert into tbusuario(usuario, fone, login, senha)
values("Administrador", "99899-9090", "admin", "admin");


-- Exibir os dados da tabela (CRUD)
-- read -> select
select * from tbusuario;

-- Descrever a tabela abaixo
describe tbusuario;
use dbinfox2;

--  A linha abaixo adiciona um campo a tabela
alter table tbusuario add column perfil varchar(20) not null;
-- A linha abaixo remove um campo de uma tabela
alter table tbusuario drop column perfil;

-- Linha abaixo inserindo mais usuários
insert into tbusuario(usuario, fone, login, senha)
values("Diego Santana", "90943-9002", "diego", "diego");

insert into tbusuario(usuario, fone, login, senha)
values("Cibele Santana", "8943-9003", "cibele", "cibele");

-- A linha abaixo adiciona ao perfil restrições de acesso
update tbusuario set perfil='admin' where iduser=1;
update tbusuario set perfil='admin' where iduser=2;
update tbusuario set perfil='user' where iduser=3;

-- Foi criado uma nova tabela com o nome tbusuario_02 igual tbusuario, apenas
-- foi retirado o tipo de auto_increment

-- Agora iremos criar uma nova tabela com o nome de tbclientes está tabela o
-- idcli vai ser auto_increment devido a demanda de usuários que possa existir
create table tbclientes(
idclie int primary key auto_increment,
nomecli varchar(50) not null
endcli varchar(100)
fonecli varchar(15) not null
emailcli varchar(50) unique
);

-- Descrevendo a nova tabela
describe tbclientes;