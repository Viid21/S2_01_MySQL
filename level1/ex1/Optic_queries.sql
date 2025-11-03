SELECT c.name AS cliente,
       COUNT(s.sell_id) AS total_facturas
FROM Sell s
JOIN Client c ON s.client_id = c.client_id
WHERE c.client_id = 1
  AND s.date BETWEEN '2025-01-01' AND '2025-12-31'
GROUP BY c.name;

SELECT DISTINCT g.glasses_id,
       g.frame_type,
       g.color_frame,
       g.price
FROM Sell s
JOIN worker w ON s.worker_id = w.worker_id
JOIN Glasses g ON s.glasses_id = g.glasses_id
WHERE w.worker_id = 1
  AND YEAR(s.date) = 2025;

SELECT DISTINCT su.name AS proveedor
FROM Sell s
JOIN Glasses g ON s.glasses_id = g.glasses_id
JOIN Brand b ON g.brand_id = b.brand_id
JOIN Suplier su ON b.suplier_id = su.suplier_id;
