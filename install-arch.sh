#!/usr/bin/env bash

mkdir -p ~/.config ~/Pictures && cp -r i3 ~/.config && cp -r picom ~/.config && cp i3blocks.conf ~/.i3blocks.conf && cp Pictures/* ~/Pictures && cp fehbg ~/.fehbg

#sudo pacman -S --needed - < pkglist.txt
while read p; do yes | sudo pacman -S --needed $p; done < pkglist.txt

