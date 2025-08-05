# SQL_Task1_database_schema
Task 1: SQL schema design for an ecommerce system. Includes database creation, table structure, and relationships
# Ecommerce Database Schema

This repository contains the database schema for an ecommerce application. The schema is designed to store information about customers, products, orders, and order items.

## Schema Overview
The schema consists of four tables:

* *Customers*: stores information about registered customers
* *Products*: stores information about available products
* *Orders*: stores information about customer orders
* *Order Items*: stores information about individual items within an order

## ER Diagram
![ER Diagram])

## Schema Details
### Tables
* *Customers*
	+ customer_id (primary key)
	+ name
	+ email
	+ password
	+ address
* *Products*
	+ product_id (primary key)
	+ name
	+ description
	+ price
* *Orders*
	+ order_id (primary key)
	+ customer_id (foreign key referencing Customers)
	+ order_date
	+ total
* *Order Items*
	+ order_item_id (primary key)
	+ order_id (foreign key referencing Orders)
	+ product_id (foreign key referencing Products)
	+ quantity

## SQL Script
The SQL script to create the schema is available in the file.

## Usage
To use this schema, simply execute the SQL script in your MySQL database. You can then use the schema to store and retrieve data for your ecommerce application.
