# Usa una imagen base ligera con Python preinstalado
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt al directorio de trabajo
COPY requirements.txt .

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Copia todos los archivos de tu proyecto al directorio de trabajo
COPY . .

# Expone el puerto que utilizará Streamlit
EXPOSE 8501

# Comando para ejecutar tu aplicación Streamlit
CMD ["streamlit", "run", "app.py"]