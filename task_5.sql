-- Insert a single row into the Customer table without specifying customer_id

INSERT INTO Customer (customer_name, email, address)
VALUES ('Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');

INSERT INTO Customer (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
