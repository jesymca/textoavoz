#!/bin/bash

# Contactarse con el creador
# Correo: herrejose@gmail.com
# Telegram: https://t.me/Jesymca


# Pedir el nombre del archivo al usuario
read -p "Introduce el nombre del archivo de texto: " nombre_archivo

# Crear el archivo vacío
nombre_archivo_txt="$nombre_archivo.txt"
touch "$nombre_archivo_txt"

# Establecer la variable de entorno
export NOMBRE_ARCHIVO_TXT="$nombre_archivo_txt"

# Activar el entorno virtual
python3 -m venv my_env # Crea el entorno si no existe
source my_env/bin/activate

# Verificar si gTTS ya está instalado
if ! pip3 show gTTS > /dev/null 2>&1; then
  # Instala gTTS si no está instalado
  pip3 install -q gTTS 
fi

# Ejecutar el script Python dentro del entorno virtual
python3 textavoz.py  

# Reproducir el archivo de audio
mplayer "$nombre_archivo.mp3"