#!/bin/bash

### Gera lista com os 5 espelhos mais rápidos
sudo pacman-mirrors -f5

### Atualização completa de pacotes
sudo pacman -Syu

### Criar diretório e montar partição automaticamente
sudo mkdir /mnt/games
sudo nano /etc/fstab
#UUID=f4525d07-661d-4c65-92b5-4dfaddf54c51 /mnt/games     ext4    defaults                   0 0

### Habilita o TRIM no SSD
sudo systemctl enable fstrim.timer

### Instala minha seleção de pacotes
sudo pacman -Syu feh inkscape k{df,rita,colorchooser,denlive} obs-studio qbittorrent steam telegram-desktop unrar yt-dlp

### Saída de áudio para perifêricos simultâneos
sudo pacman -Syu paprefs

### Wine-Staging
sudo pacman -Syu wine-staging

### Instala o Discord do Flathub
flatpak install flathub com.discordapp.Discord

### Instala o Protontricks do Flathub e concede acesso à outra unidade de disco
flatpak install flathub com.github.Matoking.protontricks
flatpak override --user --filesystem=/mnt/games/SteamLibrary com.github.Matoking.protontricks

### Fim do script
