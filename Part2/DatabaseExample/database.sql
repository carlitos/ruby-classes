DROP DATABASE my_basic_db;
CREATE DATABASE my_basic_db;

CREATE TABLE products(
  id INT PRIMARY KEY NOT NULL,
  NAME TEXT NOT NULL
);

CREATE TABLE purchases(
  id INT PRIMARY KEY NOT NULL,
  product_id INT,
  store_id int default NULL
);

CREATE TABLE stores(
  id INT PRIMARY KEY NOT NULL,
  location TEXT NOT NULL
);
