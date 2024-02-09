#!/usr/bin/env bash
sudo pacman -S --needed - < pkglist.txt

mkdir -p ~/.config && mkdir -p ~/Pictures && cp -r i3 ~/.config && cp -r picom ~/.config && cp i3blocks.conf ~/.i3blocks.conf && cp Pictures/* ~/Pictures
