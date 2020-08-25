create database cabeleleila_leila;
use cabeleleila_leila;

create table produtos(
id_serv int(5) primary key not null auto_increment,
nome_serv varchar(30) not null,
valor_serv int(5) not null
);

create table clientes(
id_cliente int(10) primary key not null auto_increment,
nome varchar(30) not null,
ende varchar(50) not null,
tel int(3) not null,
email varchar(30) not null
);


describe produtos;
describe clientes;

/*CRIAR O CAMPO QUE VAI SER A CHAVE ESTRANGEIRA*/
alter table clientes
add column servicos int;

/*TRANSFORMAR O CAMPO QUE CRIAMOS ACIMA EM CHAVE ESTRANGEIRA*/
alter table clientes
add foreign key (servicos)
references produtos(id_serv);

insert into  produtos (nome_serv, valor_serv,)
values ('manicure', '10'),
('corte', '30'),
('hidratacao', '50'); 

select * from produtos;

insert into clientes(nome, ende, tel, email, servicos)
values ('Gabriel', 'Rua enesio isqui', '22160102', 'gabriel@gmail.com', '1'),
('Luis', 'Rua rego barros', '12542568', 'luis@gmail.com', '2'),
('Julia', 'rua chifre', '47512354', 'julia@gmail.com', '3');

select * from clientes