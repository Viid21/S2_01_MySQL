CREATE DATABASE Pizzeria;
USE Pizzeria;

CREATE TABLE province (
  province_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
) ENGINE = InnoDB;

CREATE TABLE city (
  city_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  province_id INT NOT NULL,
  FOREIGN KEY (province_id) REFERENCES Province(province_id)
) ENGINE = InnoDB;

CREATE TABLE client (
  client_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  surname VARCHAR(100) NOT NULL,
  address VARCHAR(150) NOT NULL,
  postal_code VARCHAR(20) NOT NULL,
  city_id INT NOT NULL,
  FOREIGN KEY (city_id) REFERENCES City(city_id)
) ENGINE = InnoDB;

CREATE TABLE store (
  store_id INT AUTO_INCREMENT PRIMARY KEY,
  address VARCHAR(150) NOT NULL,
  postal_code VARCHAR(20) NOT NULL,
  city_id INT NOT NULL,
  province_id INT NOT NULL,
  FOREIGN KEY (city_id) REFERENCES City(city_id),
  FOREIGN KEY (province_id) REFERENCES Province(province_id)
) ENGINE = InnoDB;

CREATE TABLE employee (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  surname VARCHAR(100) NOT NULL,
  nif VARCHAR(50) NOT NULL UNIQUE,
  phone VARCHAR(20),
  role ENUM('cook', 'delivery') NOT NULL,
  store_id INT,
  FOREIGN KEY (store_id) REFERENCES Store(store_id)
) ENGINE = InnoDB;

CREATE TABLE category (
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE product (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  image VARCHAR(255),
  price DECIMAL(8,2) NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Category(category_id)
) ENGINE = InnoDB;

CREATE TABLE `Order` (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  client_id INT NOT NULL,
  store_id INT NOT NULL,
  order_datetime DATETIME NOT NULL,
  delivery_type ENUM('home', 'pickup') NOT NULL,
  total_price DECIMAL(10,2) NOT NULL,
  delivery_employee_id INT,
  delivery_datetime DATETIME,
  FOREIGN KEY (client_id) REFERENCES Client(client_id),
  FOREIGN KEY (store_id) REFERENCES Store(store_id),
  FOREIGN KEY (delivery_employee_id) REFERENCES Employee(employee_id)
) ENGINE = InnoDB;

CREATE TABLE order_Product (
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT,
  PRIMARY KEY (order_id, product_id),
  FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
) ENGINE = InnoDB;