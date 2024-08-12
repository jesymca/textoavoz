# Contactarse con el creador
# Correo: herrejose@gmail.com
# Telegram: https://t.me/Jesymca

from gtts import gTTS
import subprocess
import os

def tts(text_file, lang, name_file):
    with open(text_file, "r") as file:
        text = file.read()
    file = gTTS(text=text, lang=lang)
    file.save(name_file)

# Obtén el nombre del archivo desde la variable de entorno
nombre_archivo_txt = os.environ.get("NOMBRE_ARCHIVO_TXT")

if __name__ == "__main__":
    # Abrir el editor de texto predeterminado para que el usuario edite el archivo
    process = subprocess.Popen(["gedit", nombre_archivo_txt])

    # Esperar a que el usuario cierre el editor
    process.wait()

    # Convertir el texto a audio
    nombre_archivo_audio = nombre_archivo_txt.replace(".txt", ".mp3")  # Obtén el nombre del archivo de audio
    tts(nombre_archivo_txt, "es", nombre_archivo_audio)

    print(f"Archivo de audio {nombre_archivo_audio} creado correctamente.")
