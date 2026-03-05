-- ==========================================================
-- PROYECTO: ANÁLISIS DE RENTABILIDAD RETAIL
-- DESCRIPCIÓN: Limpieza de datos y generación de KPIs base
-- ==========================================================

-- 1. Creación de la tabla principal (Esquema)
CREATE TABLE ventas_retail (
    id_pedido VARCHAR(50),
    segmento VARCHAR(50),
    region VARCHAR(50),
    subcategoria VARCHAR(50),
    ventas DECIMAL(10,2),
    cantidad INT,
    ganancia DECIMAL(10,2)
);

-- 2. Limpieza de nulos y valores inconsistentes
DELETE FROM ventas_retail 
WHERE ventas IS NULL OR id_pedido IS NULL;

-- 3. Análisis de Rentabilidad por Subcategoría
-- Este query identifica los puntos críticos de pérdida
SELECT 
    subcategoria, 
    SUM(ventas) AS ventas_totales, 
    SUM(ganancia) AS ganancia_total,
    ROUND((SUM(ganancia) / SUM(ventas)) * 100, 2) AS margen_porcentaje
FROM ventas_retail
GROUP BY subcategoria
ORDER BY ganancia_total ASC; -- Las mayores pérdidas aparecerán primero

-- 4. Hallazgo específico: El caso de "Tables" (Mesas)
SELECT 
    region, 
    SUM(ventas) AS ventas, 
    SUM(ganancia) AS ganancia
FROM ventas_retail
WHERE subcategoria = 'Tables'
GROUP BY region
ORDER BY ganancia ASC;