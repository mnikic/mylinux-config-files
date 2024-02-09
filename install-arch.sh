#!/usr/bin/env bash
mkdir -p ~/.config ~/Pictures && cp -r i3 ~/.config && cp -r picom ~/.config && cp i3blocks.conf ~/.i3blocks.conf && cp Pictures/* ~/Pictures && cp fehbg ~/.fehbg

while read p; do sudo pacman -S --noconfirm --needed $p; done < pkglist.txt
