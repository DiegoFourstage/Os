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