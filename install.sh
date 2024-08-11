#!/bin/bash

# Verifica si se está ejecutando en Ubuntu o Debian
if [[ "$(lsb_release -is)" == "Ubuntu" || "$(lsb_release -is)" == "Debian" ]]; then
  # Instala Python 3 y pip en Ubuntu/Debian
  sudo apt-get update
  sudo apt-get install python3 python3-pip
else
  # Instala Python 3 y pip en Arch Linux
  sudo pacman -S python3 python3-pip
fi

# Instala gTTS
sudo pip3 install gTTS

# Instala un reproductor multimedia (puedes elegir uno)
# Para VLC:
if [[ "$(lsb_release -is)" == "Ubuntu" || "$(lsb_release -is)" == "Debian" ]]; then
  sudo apt-get install vlc
else
  sudo pacman -S vlc
fi

# Para MPV:
if [[ "$(lsb_release -is)" == "Ubuntu" || "$(lsb_release -is)" == "Debian" ]]; then
  sudo apt-get install mpv
else
  sudo pacman -S mpv
fi

# Para mplayer:
if [[ "$(lsb_release -is)" == "Ubuntu" || "$(lsb_release -is)" == "Debian" ]]; then
  sudo apt-get install mplayer
else
  sudo pacman -S mplayer
fi

# Instala un editor de texto (puedes elegir uno)
# Para gedit:
if [[ "$(lsb_release -is)" == "Ubuntu" || "$(lsb_release -is)" == "Debian" ]]; then
  sudo apt-get install gedit
else
  sudo pacman -S gedit
fi

# Para nano:
if [[ "$(lsb_release -is)" == "Ubuntu" || "$(lsb_release -is)" == "Debian" ]]; then
  sudo apt-get install nano
else
  sudo pacman -S nano
fi

# Hacer el script ejecutable
chmod +x textoavoz.sh
