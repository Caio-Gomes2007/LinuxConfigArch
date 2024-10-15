#!/bin/bash

##instalador da comunidade

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

cd $HOME

#copiando e criando  pastas

pastasMv=("Pictures" "polybar-collection")
pastasMkdir=("Github" "DeveloperFiles")

for pastasMover in "${pastasMv}"; do
  mv pastasMover $HOME
done

for pastasCriar in "${pastasMkdir}" ; do
  mkdir pastasCriar 
done 

mv $HOME/.config/bspwm/ $HOME/.config/bspwm.old
cp -r bspwm $HOME/.config/

##programas

# Definindo a array com os nomes dos programas
programasPacman=("nvim" "discord" "betterlockscreen" "bashtop" "neofetch" "feh")
programasParu=("tty-clock")

# Exibindo os elementos da array
echo "Programas instalados:"

for programa in "${programasPacman[@]}"; do
  pacman -S "$programa" --noconfirm
done


# Exibindo os elementos da array
echo "Programas instalados:"

for programa in "${programasParu[@]}"; do
  echo "$programa"
done

#sei la fds

mv $HOME/.config/neofetch/ $HOME/.config/neofetch.old
cp -r neofetch $HOME/.config/

#personalização de imagem
betterlockscreen -u $HOME/Pictures/wallpapers/chogato.jpg
feh --bg-scale $HOME/Pictures/wallpapers/karthus.jpg







