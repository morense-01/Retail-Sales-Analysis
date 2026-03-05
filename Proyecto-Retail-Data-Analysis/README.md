# 🍽️ Análisis de Preferencias Gastronómicas y Ratings

Este proyecto integra datos de consumidores y restaurantes en México para identificar patrones de satisfacción y comportamiento del consumidor mediante **SQL** y **Power BI**.

---

## 📝 Descripción del Proyecto
El objetivo es analizar cómo influyen el perfil del consumidor (edad, ocupación, presupuesto) y las características del restaurante (tipo de cocina, servicio de alcohol) en las calificaciones finales.

## 🛠️ Stack Tecnológico
* **Base de Datos:** PostgreSQL (Limpieza y unificación de tablas).
* **Visualización:** Power BI Desktop.
* **Lógica:** DAX para KPIs de satisfacción.

## 📁 Estructura del Repositorio
* `data/`: Contiene los archivos CSV originales (`consumers.csv`, `ratings.csv`, `restaurants.csv`).
* `sql/`: Scripts de creación de tablas y limpieza de datos.
* `dashboard/`: Archivo `.pbix` con el reporte interactivo.
* `img/`: 1.jpg.

## 🔍 Hallazgos Clave (Insights)
* **Perfil del Consumidor:** La mayoría de los usuarios son estudiantes con presupuesto medio/bajo.
* **Preferencia:** La cocina mexicana domina las preferencias, pero no siempre obtiene el mejor Service Rating.
* **Punto de Mejora:** Los restaurantes con "Alcohol Service: None" tienden a recibir calificaciones de servicio más bajas en ciertos segmentos.

## 🚀 Cómo visualizar el proyecto
1. Revisa los scripts en la carpeta `/sql` para ver la lógica de limpieza.
2. Abre el reporte en `/dashboard` para interactuar con los datos.

---
