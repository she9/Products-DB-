create table product
(
product_code int,
product_name  varchar(50),
price         float,
release_date  date
);

select * from product;

/*LOADING DATA INTO TABLE*/

insert into product(product_code,product_name,price,release_date )
values(1, 'Fridge',150000, '22-07-2024');
insert into product(product_code,product_name,price,release_date )
values(2, 'Macbook',155000, '23-07-2025');
insert into product(product_code,product_name,price,release_date )
values(3, 'Airpods',150000, '10-05-2022');
insert into product(product_code,product_name,price,release_date )
values(4, 'HP',150000, '23-09-2023');
insert into product(product_code,product_name,price,release_date )
values(5, 'TCL',16500,to_date('16-04-2024', 'dd-mm-yyyy'));

/* READING DATA*/
select * from product where price > 150000;

select product_name from product;

select * from product where to_char( release_date,'yyyy') = '2024'; 
select * from product where extract(year from release_date)='2023'

 /* COLUMN ALIAS nb- changing the column name- use as command */
select product_name as products from product;

/*COUNTING TOTAL NUMBER OF RECORDS IN A TABLE*/
select * from product

select count(*) from product;

select count(*) from product where price > 150000;

select sum(price) from product

select avg(price) from product

/*MODIFYING DATA - use update command*/
update product
set price =178000
where product_code = 1;

select * from product;

update product
set price = 250000
where product_name like 'Macbook%'

update product
set price = 999.5
where product_name like '%15%'


/* REMOVING DATA FROM TABLE - use delete command*/
/* deleting specific records- use delete command*/
delete from product where product_name like '%Fridge%'

delete from product;

delete from product where product_name not like '%Fridge%'

/* deleting entire records from a table without filtering - use truncate*/
truncate table product;

/*CREATING A BACKUP OR DUPLICATE OF A TABLE FROM AN EXISTING TABLE*/
create table product_bkp as select * from product;

select * from product_bkp;

/* COPYING THE STRUCTURE OF A TABLE WITHOUT INCLUDING RECORDS*/
create table product_bkp2
as
select *from product
where 1=2;

select * from product_bkp2;

/*REMOVING A TABLE FROM A DB-use drop*/
 drop table product;

 select *from product;
/* MODIFY TABLE*/
 select * from product;
 select * from product_bkp;
 select * from product_bkp2;

/*Renaming a table- use alter command*/

alter table product_bkp rename to product;

alter table product rename column product_code to id;

alter table product alter column id type float;


 