# 🔍 Análisis Exploratorio de Tarifas en Servicios de Movilidad
## Módulo: Python & Análisis Exploratorio de Datos
Análisis EDA sobre más de 693.000 registros de viajes (Uber/Lyft) cruzados con datos meteorológicos, identificando los factores que determinan el precio del servicio.

Highlights técnicos:

Merge de dos datasets por zona geográfica y franja horaria (redondeo de epoch timestamp)
Imputación de precios faltantes segmentada por rangos de distancia con medianas por intervalo
Detección y tratamiento de nulos, duplicados y conversión de timestamps (segundos y milisegundos)

Hallazgos clave:

📍 La distancia es el principal predictor del precio
🌧️ La lluvia + baja visibilidad incrementa el precio hasta un 10%
⏰ Los precios son más altos en horas pico (mañana y tarde-noche)
💰 Lyft presenta mayor variabilidad de precios que Uber ($17.35 vs $15.72 promedio)

Python Pandas NumPy Matplotlib Seaborn EDA