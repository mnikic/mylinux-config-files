ln -sf /usr/share/zoneinfo/US/Pacific /etc/localtime
hwclock --systohc
sed -i '171s/.//' /etc/locale.gen
sed -i '172s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts

pacman -S grub efibootmgr networkmanager network-manager-applet xorg xorg-server xorg-xinit i3-wm i3blocks i3lock lightdm lightdm-gtk-greeter dialog wpa_supplicant base-devel linux-headers linux-lts linux-lts-headers xdg-user-dirs xdg-utils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call terminus-font xclip

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB #change the directory to /boot/efi is you mounted the EFI partition at /boot/efi

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable lightdm.service

useradd -m loshmi
usermod -aG wheel loshmi

echo "loshmi ALL=(ALL) ALL" >> /etc/sudoers.d/loshmi
RED=$(tput setaf 1)
printf "${RED}Need to change loshmi's password in order to be able to log in!!!\e[0m\n"
echo "$(passwd loshmi)"
printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m\n"
