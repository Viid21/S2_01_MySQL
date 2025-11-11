CREATE DATABASE Optic;
USE Optic;

CREATE TABLE suplier (
  suplier_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  street VARCHAR(150),
  streetInt VARCHAR(20),
  floor VARCHAR(50),
  door VARCHAR(20),
  city VARCHAR(100),
  postal_code VARCHAR(20),
  country VARCHAR(100),
  phone VARCHAR(50),
  fax VARCHAR(50),
  nif VARCHAR(50) UNIQUE
) ENGINE = InnoDB;

CREATE TABLE brand (
  brand_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  suplier_id INT NOT NULL,
  FOREIGN KEY (suplier_id) REFERENCES Suplier(suplier_id)
) ENGINE = InnoDB;

CREATE TABLE glasses (
  glasses_id INT AUTO_INCREMENT PRIMARY KEY,
  brand_id INT NOT NULL,
  lens_graduation_r DECIMAL(4,2),
  lens_graduation_l DECIMAL(4,2),
  frame_type ENUM('floating', 'plastic', 'metal'),
  color_frame VARCHAR(50),
  color_lens_r VARCHAR(50),
  color_lens_l VARCHAR(50),
  price DECIMAL(8,2),
  FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
) ENGINE = InnoDB;

CREATE TABLE client (
  client_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  direction VARCHAR(150),
  phone VARCHAR(20),
  email VARCHAR(100),
  register_date DATE,
  recomended_for INT,
  FOREIGN KEY (recomended_for) REFERENCES Client(client_id)
) ENGINE = InnoDB;

CREATE TABLE worker (
  worker_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  subnames VARCHAR(100)
) ENGINE = InnoDB;

CREATE TABLE sell (
  sell_id INT AUTO_INCREMENT PRIMARY KEY,
  client_id INT NOT NULL,
  worker_id INT NOT NULL,
  glasses_id INT NOT NULL,
  date DATE,
  FOREIGN KEY (client_id) REFERENCES Client(client_id),
  FOREIGN KEY (worker_id) REFERENCES Worker(worker_id),
  FOREIGN KEY (glasses_id) REFERENCES Glasses(glasses_id)
) ENGINE = InnoDB;