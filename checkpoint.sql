create table customer (
customer_id varchar(20) primary key,
	customer_name varchar(20) not null,
	customer_tel int
);


create table product(
product_id varchar(20) primary key,
	product_name varchar(20) not null,
	price int
);



create table orders(
customer_id varchar(20),
	product_id varchar(20),
	quantity int,
constraint fk_customer_id Foreign key(customer_id) references customer(customer_id),
constraint fk_product_id Foreign key(product_id) references product(product_id)
-- foreign key(customer_id) references customer(id),
-- 	foreign key(product_id) references product(id)
)


alter table orders add orderdate date default current_date
