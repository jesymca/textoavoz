#!/bin/bash
# Contactarse con el creador
# Correo: herrejose@gmail.com
# Telegram: https://t.me/Jesymca

# Función para instalar paquetes con el administrador de paquetes actual
install_package() {
  local package_name="$1"
  if [[ "$(command -v apt-get)" ]]; then
    sudo apt-get update
    sudo apt-get install -y "$package_name"
  elif [[ "$(command -v yum)" ]]; then
    sudo yum install -y "$package_name"
  elif [[ "$(command -v dnf)" ]]; then
    sudo dnf install -y "$package_name"
  elif [[ "$(command -v pacman)" ]]; then
    sudo pacman -S "$package_name"
  else
    echo "Error: No se encontró un administrador de paquetes compatible."
    exit 1
  fi
}

# Instala Python 3 y pip
install_package python3 python3-pip

# Instala gTTS
sudo pip3 install gTTS

# Instala un reproductor multimedia (puedes elegir uno)
install_package vlc

# Instala un editor de texto (puedes elegir uno)
install_package gedit

# Hacer el script ejecutable
chmod +x textoavoz.sh