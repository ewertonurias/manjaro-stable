#!/bin/bash

### Gera lista com os 5 espelhos mais rápidos
sudo pacman-mirrors -f5

### Habilita download paralelo no Pacman
sudo nano /etc/pacman.conf
#Encontre e descomente a linha "ParallelDownloads = 5"

### Atualiza banco de dados e todos os pacotes no sistema
sudo pacman -Syu

### Habilita o TRIM no SSD
sudo systemctl enable fstrim.timer

### Instala minha seleção pessoal de pacotes
sudo pacman -Syu feh inkscape k{df,rita,colorchooser,denlive} obs-studio qbittorrent telegram-desktop unrar yt-dlp

### Saída de áudio para perifêricos simultâneos
sudo pacman -Syu paprefs

### Instala a sessão Wayland
sudo pacman -Syu plasma-wayland-session

### Fim do script
