create table Product(
product_id serial primary key,
	product_name varchar not null,
	price float check(price>0),
	product_type varchar,
	purchase_date date Default '12-02-2002'
)	