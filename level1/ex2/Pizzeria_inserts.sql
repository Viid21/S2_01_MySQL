USE Pizzeria;
INSERT INTO Province (name) VALUES ('Barcelona'), ('Girona');

INSERT INTO city (name, province_id) VALUES 
('Barcelona', 1),
('Mataró', 1),
('Girona', 2);

INSERT INTO client (name, surname, adress, postal_code, city_id) VALUES
('Ana', 'López', 'C/ Mallorca 123', '08029', 1),
('Carlos', 'Martínez', 'C/ Aragó 45', '08301', 2);

INSERT INTO store (adress, postal_code, city_id, province_id) VALUES
('Av. Diagonal 200', 08018, 1, 1),
('C/ Major 10', 08301, 2, 1);

INSERT INTO employee (name, surname, nif, phone, role, store_id) VALUES
('Jordi', 'Sánchez', '12345678A', 600112233, 'delivery', 1),
('Marta', 'Gómez', '87654321B', 600223344, 'cook', 1),
('Laura', 'Pérez', '11223344C', 600334455, 'delivery', 2);

INSERT INTO category (name) VALUES ('Pizzes'), ('Hamburgueses'), ('Begudes');

INSERT INTO product (name, description, image, price, category_id) VALUES
('Coca-Cola', 'Refresc de cola', NULL, 2.50, 3),
('Fanta', 'Refresc de taronja', NULL, 2.50, 3),
('Margarita', 'Pizza clàssica', NULL, 8.50, 1),
('Cheeseburger', 'Hamburguesa amb formatge', NULL, 6.00, 2);

INSERT INTO `order` (client_id, store_id, order_datetime, delivery_type, total_price, delivery_employee_id, delivery_datetime) VALUES
(1, 1, '2025-03-10 20:15:00', 'home', 13.50, 1, '2025-03-10 20:45:00'),
(2, 2, '2025-03-11 21:00:00', 'pickup', 11.00, NULL, NULL);

INSERT INTO order_product (order_id, product_id, quantity) VALUES
(1, 1, 2), 
(1, 3, 1), 
(2, 2, 1), 
(2, 4, 1); 