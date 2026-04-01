# 🚕 RideFare — Análisis de Tarifas en Servicios de Movilidad

## 🎯 Objetivo
Realizar un análisis exploratorio (EDA) sobre datos de viajes y condiciones 
climáticas para identificar los factores que influyen en el precio, detectar 
patrones de demanda y sentar las bases para futuros modelos predictivos.

## 🛠️ Herramientas
- Python (Pandas, Matplotlib, Seaborn)
- Jupyter Notebook

## 📁 Datasets
- **rides:** ~693.071 registros con distancia, tipo de servicio, precio, 
  timestamp, origen/destino y multiplicador de tarifa dinámica
- **weather:** ~6.276 registros con temperatura, lluvia, humedad, 
  nubosidad, presión y viento

## 🔍 Proceso
1. Exploración inicial: dimensiones, tipos de datos y estadísticas descriptivas
2. Evaluación de calidad: nulos, duplicados y conversión de tipos
3. Análisis de distribuciones: distancia, precio y tipo de servicio
4. Cruce de datasets: relación entre clima y precio
5. Visualizaciones: heatmap de correlaciones, histogramas, boxplots y scatterplots

## 💡 Hallazgos principales
- 📍 La mayoría de viajes son cortos, confirmando uso urbano del servicio
- 💰 Lyft presenta precios más altos y variables que Uber ($17.35 vs $15.72 promedio)
- ⏰ Los precios son más altos en horas pico (mañana y tarde-noche)
- 🌧️ La lluvia combinada con baja visibilidad incrementa el precio hasta un 10%
- 📈 Existe relación positiva clara entre distancia y precio

## 📌 Conclusión
La distancia, la hora del día y las condiciones climáticas son los principales 
determinantes del precio. Estos hallazgos permiten diseñar estrategias de 
pricing dinámico, optimizar la oferta de vehículos y planificar promociones 
en horarios de baja demanda.

## 🔮 Próximos pasos
- Modelo predictivo de precios (distancia + tipo de servicio + clima)
- Análisis geográfico con heatmaps de origen/destino
- Análisis de elasticidad de demanda por categoría