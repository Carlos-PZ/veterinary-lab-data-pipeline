# Fase 3: Flujo de Preprocesamiento y Limpieza (Python)

Este documento detalla la arquitectura y las reglas aplicadas para la limpieza de los datos extraídos, garantizando que estén listos para el análisis y el modelado en Power BI.

## 1. Arquitectura del Pipeline (Principio DRY)
Para evitar la duplicación de código y facilitar el mantenimiento, el Notebook de Kaggle se estructura bajo el principio **DRY (Don't Repeat Yourself)**:
*   **Funciones Auxiliares (Globales):** Aplican a todas las tablas (ej. estandarización de nombres de columnas a minúsculas, eliminación de acentos y espacios).
*   **Funciones Específicas:** Aplican las reglas de negocio y limpieza particulares de cada tabla.

## 2. Reglas de Limpieza por Tabla

### A. Tabla `empleado`
*   **Estandarización global:** Nombres de columnas en minúsculas y sin acentos.
*   **Nulos:** Reemplazo de caracteres `\N` (formato PostgreSQL) por valores nulos reales de Python (`NaN`).
*   **Privacidad (Data Minimization):** Eliminación total de la columna `nombre` para proteger la identidad de los empleados en la versión pública.
*   **Tipos de datos:** Conversión de la columna `activo` de formato texto (`t`/`f`) a booleano (`True`/`False`).

### B. Tabla `orden`
*   *(Pendiente de definir en la siguiente iteración)*

### C. Tabla `orden_detalle`
*   *(Pendiente de definir en la siguiente iteración)*

## 3. Entregables
*   **Notebook:** `notebooks/01_preprocesamiento.ipynb` (Alojado en Kaggle y respaldado en GitHub).
*   **Datos limpios:** 3 archivos CSV (`empleado_limpio.csv`, `orden_limpio.csv`, `orden_detalle_limpio.csv`) generados en la carpeta *Output* de Kaggle.
