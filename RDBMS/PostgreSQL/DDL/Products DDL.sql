create table application.products (product_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
product_category_id integer,
product_name varchar(255),
product_desc varchar(255),
product_price varchar(255),
product_image varchar(255));