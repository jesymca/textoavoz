#!/bin/bash

# Pedir el nombre del archivo al usuario
read -p "Introduce el nombre del archivo de texto: " nombre_archivo

# Crear el archivo vacío
nombre_archivo_txt="$nombre_archivo.txt"
touch "$nombre_archivo_txt"

# Establecer la variable de entorno
export NOMBRE_ARCHIVO_TXT="$nombre_archivo_txt"

# Abrir el editor de texto predeterminado para que el usuario edite el archivo
#gedit "$nombre_archivo_txt"

# Ejecutar el script Python
python3 textavoz.py

# Reproducir el archivo de audio
mplayer "$nombre_archivo.mp3"
