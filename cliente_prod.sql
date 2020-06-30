create database prod_cliente;
use prod_cliente;
create table bd_cliente (
id int(11) not null primary key,
nome varchar(30) not null,
idade int(2) not null,
cidade varchar(30) not null,
estado varchar(30) not null
);

create table produtos (
id_prod int(11) not null primary key,
nome_prod varchar(30) not null,
qta_prod int(11) not null,
preco_prod int(11) not null
);

insert into bd_cliente(id, nome, idade, cidade, estado)
values ('1','Gabriel', '25', 'São Paulo', 'SP'),
('2', 'Vitor', '25', 'São Paulo', 'SP'),
('3', 'Luis', '30', 'Porto Alegre', 'RS'),
('4', 'Julia', '50', 'Rio de Janeiro', 'RJ'),
('5', 'Mateus', '50', 'Rio de Janeiro', 'RJ');

insert into  produtos (id_prod, nome_prod, qta_prod, preco_prod)
values ('10', 'Caderno', '10', '23'),
('11', 'Livro', '10', '26'),
('12', 'Apostila', '10', '28'),
('13', 'Cadeira', '10', '60'),
('14', 'Luminaria', '10', '30');

select nome, cidade from bd_cliente
where cidade in ('Rio de Janeiro', 'São Paulo');

select nome, cidade from bd_cliente
where cidade not in ('São Paulo');

select nome_prod, preco_prod from produtos
where preco_prod between 20 and 50;

select nome, idade from bd_cliente
where idade between 20 and 30;

select nome, idade from bd_cliente
where idade not between 20 and 30;