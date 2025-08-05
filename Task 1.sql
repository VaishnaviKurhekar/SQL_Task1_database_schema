/*Let's create a database schema for an E-commerce domain.*/

/*Domain: E-commerce*/

/*Entities:

1. Customers
2. Products
3. Orders
4. Order Items

Relationships:

1. A customer can place many orders (one-to-many).
2. An order is associated with one customer (many-to-one).
3. An order can have many order items (one-to-many).
4. An order item is associated with one order (many-to-one) and one product (many-to-one).*/

/*SQL Script (MySQL):*/
CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE products (
  product_id INT AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (product_id)
);

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  total DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (order_item_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);