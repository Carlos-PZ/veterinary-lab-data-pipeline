# Validación Inicial de Datos (Fase 2)

Tras la extracción de las tablas desde PostgreSQL, se realizó una validación de integridad y calidad de los datos.

## 1. Conteo de registros
*   `orden`: 99,044 registros.
*   `orden_detalle`: 158,829 registros.
*   `empleado`: 132 registros.

## 2. Revisión de valores nulos
*   `fecha_orden`: Sin valores nulos.
*   `orden_id`: Sin valores nulos.
*   `empleado_id`: Presenta valores nulos. **Acción acordada con el stakeholder:** Se imputarán los valores faltantes asignando un empleado basado en el horario de la orden (regla de negocio a aplicar en la fase de preprocesamiento en Python).

## 3. Rango temporal
*   Los datos abarcan desde **agosto de 2021 hasta julio de 2026**, cumpliendo con el alcance definido en la Fase 1.
