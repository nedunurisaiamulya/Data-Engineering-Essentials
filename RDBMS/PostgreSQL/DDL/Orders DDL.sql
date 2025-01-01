create table application.orders (order_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
order_date timestamp,
order_customer_id integer,
order_status varchar);