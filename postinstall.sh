#!/bin/bash

### Gera lista com os 5 espelhos mais rápidos
printf "\nEtapa 1/5: Gerando lista de espelhos... \n\n"
sudo pacman-mirrors -f5

### Atualização completa dos pacotes
printf "\nEtapa 2/5: Atualizando o sistema... \n\n"
sudo pacman -Syyuu

### Habilita o TRIM no SSD
printf "\nEtapa 3/5: Habilitando o TRIM para o SSD... \n\n"
sudo systemctl enable fstrim.timer

### Instala o driver proprietário NVIDIA automaticamente
printf "\nEtapa 4/5: Instalando driver proprietário NVIDIA... \n\n"
sudo mhwd -a pci nonfree 0300

### Instala minha seleção de pacotes
printf "\nEtapa 5/5: Instalando minha seleção de softwares... \n\n"
sudo pacman -Syu firefox-i18n-pt-br k{df,rita,colorchooser} inkscape libreoffice-still-pt-br qbittorrent vlc unrar steam discord telegram-desktop youtube-dl

### Fim do script.
printf "\nFIM DO SCRIPT \n\n"
