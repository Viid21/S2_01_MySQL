SELECT ci.name AS city, SUM(op.quantity) AS total_drinks
FROM `order` o
JOIN client c ON o.client_id = c.idClient
JOIN city ci ON c.city_id = ci.idCity
JOIN order_product op ON o.order_id = op.order_id
JOIN product p ON op.product_id = p.idProduct
JOIN category ca ON p.category_id = ca.idCategory
WHERE ca.name = 'Begudes' AND ci.name = 'Barcelona'
GROUP BY ci.name;

SELECT e.name, e.surname, COUNT(o.order_id) AS total_orders
FROM employee e
JOIN `order` o ON e.idEmployee = o.delivery_employee_id
WHERE e.idEmployee = 1
GROUP BY e.name, e.surname;
