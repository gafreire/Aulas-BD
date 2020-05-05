create database atividade1;
use atividade1;
create table vendas(
ID Smallint Primary Key auto_increment,
Nome_Vendedor Varchar(20),
Quantidade Int,
Produto Varchar(20),
Cidade Varchar(20)
);

insert into vendas (Nome_Vendedor, Quantidade, Produto, Cidade  )
values('Jorge',1400,'Mouse','São Paulo');

insert into vendas (Nome_Vendedor, Quantidade, Produto, Cidade  )
values ('Tatiana',1220,'Teclado','São Paulo');

insert into vendas (Nome_Vendedor, Quantidade, Produto, Cidade  )
values ('Ana',1700,'Teclado','Rio de Janeiro');

insert into vendas (Nome_Vendedor, Quantidade, Produto, Cidade  )
values ('Rita',2120,'Webcam','Recife');

/*Jeito que eua chei de conseguir fazer kkk */
select sum( Quantidade) as 'Quantidade de Teclados e mouses vendidos'
from vendas
where Quantidade < '2120';

/*Gabriel Freire 2DS */