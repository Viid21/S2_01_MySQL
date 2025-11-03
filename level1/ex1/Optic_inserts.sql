USE Optic;

INSERT INTO Suplier (name, street, streetInt, floor, door, city, `postal code`, country, phone, fax, nif)
VALUES
('VisionPro', 'C/ Mallorca', 12, 1, 2, 'Barcelona', 08029, 'España', 933112233, '933112234', 'B12345678'),
('OptiWorld', 'Av. Diagonal', 200, 3, 1, 'Barcelona', 08018, 'España', 934445566, '934445567', 'B87654321');

INSERT INTO Brand (name, suplier_id)
VALUES
('RayBan', 1),
('Oakley', 1),
('Police', 2);

INSERT INTO Glasses (brand_id, lens_graduation_r, lens_graduation_l, frame_type, color_frame, color_lens_r, color_lens_l, price)
VALUES
(1, -1.25, -1.50, 'plastic', 'negro', 'transparente', 'transparente', 120.00),
(2, -2.00, -2.25, 'metal', 'plateado', 'verde', 'verde', 150.00),
(3, 0.00, 0.00, 'floating', 'azul', 'marrón', 'marrón', 90.00);

INSERT INTO Client (name, direction, phone, email, register_date, recomended_for)
VALUES
('Ana López', 'C/ Mallorca 123', 600112233, 'ana@example.com', '2025-01-15', NULL),
('Carlos Martínez', 'C/ Aragó 45', 600223344, 'carlos@example.com', '2025-02-10', 1), 
('Laura Pérez', 'Av. Meridiana 300', 600334455, 'laura@example.com', '2025-03-05', 1);

INSERT INTO worker (name, subnames)
VALUES
('Jordi', 'Sánchez'),
('Marta', 'Gómez');

INSERT INTO Sell (client_id, worker_id, glasses_id, date)
VALUES
(1, 1, 1, '2025-03-10'),
(1, 2, 2, '2025-05-22'),
(2, 1, 3, '2025-07-15'),
(3, 2, 1, '2025-09-01');