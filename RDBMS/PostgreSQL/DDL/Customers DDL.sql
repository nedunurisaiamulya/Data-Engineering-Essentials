create table application.customers (customer_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
customer_fname varchar(255),
customer_lname varchar(255),
customer_email varchar(255),
customer_password varchar(255),
customer_street varchar(255),
customer_city varchar(255),
customer_state varchar(255),
customer_zipcode varchar(255));