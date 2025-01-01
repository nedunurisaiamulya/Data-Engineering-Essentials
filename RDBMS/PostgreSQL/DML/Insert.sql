INSERT INTO application.departments (department_name)
SELECT CONCAT('Department ', n)
FROM generate_series(1, 10) AS s(n);

INSERT INTO application.categories (category_dept_id, category_name)
SELECT (1 + (random() * 10)::INT), CONCAT('Category ', n)
FROM generate_series(1, 20) AS s(n);

INSERT INTO application.products (product_category_id, product_name, product_desc, product_price, product_image)
SELECT 
    (1 + (random() * 20)::INT), 
    CONCAT('Product ', n), 
    CONCAT('Description for Product ', n), 
    (10 + (random() * 90))::DECIMAL(10, 2), 
    CONCAT('image_', n, '.jpg')
FROM generate_series(1, 100) AS s(n);


INSERT INTO application.customers (customer_fname, customer_lname, customer_email, customer_password, customer_street, customer_city, customer_state, customer_zipcode)
SELECT 
    CONCAT('FirstName', n), 
    CONCAT('LastName', n), 
    CONCAT('customer', n, '@example.com'), 
    CONCAT('password', n), 
    CONCAT(n, ' Main Street'), 
    CONCAT('City', n % 10), 
    CONCAT('State', n % 5), 
    CONCAT(LPAD((10000 + n)::TEXT, 5, '0'))
FROM generate_series(1, 100) AS s(n);



-- Insert data into orders table
INSERT INTO application.orders (order_date, order_customer_id, order_status)
SELECT 
    NOW() - (random() * interval '365 days'), 
    (1 + (random() * 100)::INT), 
    CASE (random() * 3)::INT 
        WHEN 0 THEN 'Pending' 
        WHEN 1 THEN 'Completed' 
        WHEN 2 THEN 'Closed Orders' 
    END
FROM generate_series(1, 100) AS s(n);

-- Insert data into order_items table
INSERT INTO application.order_items (order_item_order_id, order_item_product_id, order_item_quantity, order_item_subtotal, order_item_product_price)
SELECT 
    (1 + (random() * 100)::INT), 
    (1 + (random() * 100)::INT), 
    (1 + (random() * 10))::TEXT, 
    (10 + (random() * 90))::DECIMAL(10, 2)::TEXT, 
    (5 + (random() * 50))::DECIMAL(10, 2)::TEXT
FROM generate_series(1, 100) AS s(n);
