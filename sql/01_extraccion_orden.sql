-- =====================================================
-- Query: Extracción de la tabla de hechos 'orden'
-- Objetivo: Obtener el encabezado de las órdenes con datos de compañía, especie y raza.
-- Registros esperados: ~99,044
-- Nota: Uso de LEFT JOIN para conservar órdenes incluso si faltan datos en catálogos.
-- =====================================================

SELECT 
    po.id AS id_orden, 
    company.name AS compania, 
    po.name AS punto_venta, 
    po.date_order AS fecha_orden, 
    po.x_edad AS edad, 
    po.x_sexo AS sexo, 
    po.x_peso AS peso, 
    po.x_estudio AS estudio, 
    especie.name AS especie, 
    raza.name AS raza, 
    po.employee_id AS empleado_id
FROM pos_order AS po
LEFT JOIN res_company AS company
    ON po.company_id = company.id
LEFT JOIN divet_especie AS especie
    ON po.especie_id = especie.id
LEFT JOIN divet_raza AS raza
    ON po.raza_id = raza.id
ORDER BY po.id;
