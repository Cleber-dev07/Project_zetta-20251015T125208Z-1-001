#!/bin/bash
# Script para instalar GNOME Tweaks, gnome-extensions-cli e extensões no Debian

# Atualiza pacotes e instala dependências
sudo apt update && sudo apt install -y gnome-tweaks python3-pip git

# Instala o gnome-extensions-cli via pip
pip3 install --user gnome-extensions-cli

# Adiciona o diretório do pip ao PATH (se ainda não estiver)
export PATH=$PATH:$HOME/.local/bin

# Instala extensões GNOME
gnome-extensions-cli dash-to-panel@jderose9.github.com

echo "✅ Instalação concluída!"
