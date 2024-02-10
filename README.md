These are some of my file needed to make a working i3 version of my destop on arch. Tested on Arch installed in August 2023.
It is still a work in progress. (there is package for locking that is manually installed so not available via pacman, there are some grub settings that are not here, some spash screens etc). Yet its a functional (but minimal) desktop.

During installation, once one gets to the point where you arch-chroot into /mnt, one can git clone this repo and cd into it. Then one can run
sh base.sh
And get the time, locale, basic installation of i3, xorg, users and the boot loader done. Then one can reboot and hopefully see a GUI. 

After loging in, I believe that invoking:

!!Warning!! This will install all the packages inside pkglist.txt that are not already installed. It will answer "yes" to all prompts by pacman. Do this with care, maybe even have a system snapshot (or timeshift point) before this is executed.

sudo sh install-arch.sh

will do everything needed.
The only thing that can trip it up is permissions, so play with that for a bit if it doesn't work.
Then restart i3 (win+shift+r) or just log out and in again.
And that should be it.
