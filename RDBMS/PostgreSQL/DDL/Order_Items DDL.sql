create table application.order_items (order_item_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
order_item_order_id integer,
order_item_product_id integer,
order_item_quantity varchar(255),
order_item_subtotal varchar(255),
order_item_product_price varchar(255));