These are some of my file needed to make a working i3 version of my destop on arch. Tested on Arch installed in August 2023.
It is still a work in progress. (there is package for locking that is manually installed so not available via pacman, there are some grub settings that are not here, some spash screens etc). Yet its a functional (but minimal) desktop.

If on arch i believe that invoking:

!!Warning!! this will all the packages inside pkglist.txt that are not already installed. It will answer "yes" to all prompts by pacman. Do this with care, maybe even have a system snapshot (or timeshift point) before this.

sudo sh install-arch.sh

will do everything needed.
Then restart i3 (win+shift+r) or just log out and in again.
And that should be it.
