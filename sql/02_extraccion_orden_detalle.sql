-- =====================================================
-- Query: Extracción de la tabla de hechos 'orden_detalle'
-- Objetivo: Obtener el detalle de los servicios/productos vendidos por orden.
-- Registros esperados: ~158,829
-- Nota: LEFT JOIN con product_template y product_category para obtener tipo y categoría.
-- =====================================================

SELECT 
    pol.id AS id_orden_detalle, 
    pt.detailed_type AS tipo_producto, 
    pc.name AS categoria_producto, 
    pol.full_product_name AS nombre_producto, 
    pol.qty AS cantidad, 
    pt.active AS activo, 
    pol.order_id AS orden_id
FROM pos_order_line AS pol
LEFT JOIN product_template AS pt
    ON pol.product_id = pt.id
LEFT JOIN product_category AS pc
    ON pt.categ_id = pc.id
ORDER BY pol.id;
