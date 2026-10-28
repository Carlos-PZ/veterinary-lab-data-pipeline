# Diccionario de Datos (Modelo Analítico)

Este documento describe las variables seleccionadas del esquema estrella para el análisis de volumen de ventas.

## 1. Tabla: `orden` (Tabla de Hechos)
| Variable | Tipo de Dato | Descripción |
| :--- | :--- | :--- |
| `id_orden` | Integer (PK) | Identificador único de la orden. |
| `compania` | Varchar | Nombre de la compañía a la que pertenece el punto de venta. |
| `punto_venta` | Varchar | Nombre del punto de venta (sucursal). |
| `fecha_orden` | Timestamp | Fecha y hora exacta en que se generó la orden. |
| `edad` | Integer | Edad de la mascota. |
| `sexo` | Varchar | Sexo de la mascota. |
| `peso` | Numeric | Peso de la mascota. |
| `estudio` | Varchar | Número del estudio de la mascota. |
| `especie` | Varchar | Especie de la mascota (ej. Canino, Felino). |
| `raza` | Varchar | Raza de la mascota. |
| `empleado_id` | Integer (FK) | Identificador del empleado que atendió la orden. |

## 2. Tabla: `orden_detalle` (Tabla de Hechos/Detalle)
| Variable | Tipo de Dato | Descripción |
| :--- | :--- | :--- |
| `id_orden_detalle` | Integer (PK) | Identificador único de la orden a detalle. |
| `tipo_producto` | Varchar | Tipo de producto/servicio (ej. Servicio, Producto). |
| `categoria_producto` | Varchar | Categoría del servicio/producto (ej. Radiología, Ultrasonido). |
| `nombre_producto` | Varchar | Nombre específico del servicio o producto vendido. |
| `cantidad` | Integer | Cantidad de servicios/productos en esta orden. |
| `activo` | Boolean | Indica si el registro está activo (True/False). |
| `orden_id` | Integer (FK) | Identificador de la orden a la que pertenece (Llave foránea). |

## 3. Tabla: `empleado` (Tabla de Dimensión)
| Variable | Tipo de Dato | Descripción |
| :--- | :--- | :--- |
| `id_empleado` | Integer (PK) | Identificador único del empleado. |
| `nombre` | Varchar | Nombre completo del empleado (Será anonimizado). |
| `genero` | Varchar | Género del empleado. |
| `campo_estudio` | Varchar | Área de estudio del empleado. |
| `titulo_puesto` | Varchar | Puesto o cargo del empleado (ej. Veterinario, Recepcionista). |
| `departamento` | Varchar | Departamento al que pertenece el empleado. |
| `compania_empl` | Varchar | Compañía del empleado. |
| `activo` | Boolean | Indica si el empleado sigue laborando (True/False).
