-- =====================================================
-- Query: Extracción de la tabla de dimensión 'empleado'
-- Objetivo: Obtener el catálogo de empleados, sus departamentos y compañías.
-- Registros esperados: 132
-- Nota: El campo 'nombre' será anonimizado en la fase de preprocesamiento (Python).
-- =====================================================

SELECT 
    empl.id AS id_empleado, 
    empl.name AS nombre, 
    empl.gender AS genero,
    empl.study_field AS campo_estudio, 
    empl.job_title AS titulo_puesto, 
    depto.complete_name AS departamento, 
    compania.name AS compania_empl, 
    empl.active AS activo
FROM hr_employee AS empl
LEFT JOIN hr_department AS depto
    ON empl.department_id = depto.id
LEFT JOIN res_company AS compania
    ON empl.company_id = compania.id
ORDER BY empl.id;
