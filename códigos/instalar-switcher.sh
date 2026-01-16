#!/bin/bash

# Aborta o script em caso de erro
set -e



# 1. Atualiza pacotes e instala dependências e o GNOME Tweaks
sudo apt update
sudo apt install pipx python3-pip libglib2.0-bin gnome-tweaks -y

# 2. Instala o gnome-extensions-cli via pipx
# Usamos --force para garantir que ele sobrescreva se houver instalação parcial
pipx install gnome-extensions-cli --system-site-packages --force

# 3. Garante que o diretório do pipx esteja no PATH para esta execução
export PATH="$HOME/.local/bin:$PATH"

# 4. Instala extensões GNOME
# Nota: A extensão pode exigir que você reinicie a sessão (Log out/Log in) para aparecer
echo "📦 Instalando extensões..."
gnome-extensions-cli install switcher@daniellandau.github.io

echo "✅ Instalação concluída!"
