#!/bin/bash

### Gera lista com os 5 espelhos mais rápidos
printf "\nEtapa 1/6: Gerando lista de espelhos... \n\n"
sudo pacman-mirrors -f5

### Atualização completa dos pacotes
printf "\nEtapa 2/6: Atualizando o sistema... \n\n"
sudo pacman -Syyu

### Habilita o TRIM no SSD
printf "\nEtapa 3/6: Habilitando o TRIM para o SSD... \n\n"
sudo systemctl enable fstrim.timer

### Instala o driver proprietário NVIDIA automaticamente
printf "\nEtapa 4/6: Instalando driver proprietário NVIDIA... \n\n"
sudo mhwd -a pci nonfree 0300

### Instala minha seleção de pacotes
printf "\nEtapa 5/6: Instalando minha seleção de softwares... \n\n"
sudo pacman -Syu k{df,rita,colorchooser} inkscape qbittorrent unrar steam telegram-desktop youtube-dl

### Instala o Discord do Flathub
printf "\nEtapa 6/6: Instalando o Discord do Flathub... \n\n"
flatpak install flathub com.discordapp.Discord

### Fim do script.
printf "\nFIM DO SCRIPT \n\n"
