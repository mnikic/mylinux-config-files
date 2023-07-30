These are some of my file needed to make a working i3 destop on debian minimal. Tested on Debian 12.1

Not all of the i3 blocklets that are there are used actually. Couldn't yet get the wifi, and ssid to work, also rofi-calendar has some dependancy that i don't have, so it looks weird.

Anyway there is an install.sh script that installs all the needed packages. 
After that one should restart and run i3 for the first time, creating the ncessary config etc.
Then one needs to copy contents of this i3 file to ./config such as:

cp -r i3 ./config

Then restart i3 or just log out and in again.
And that should be it.
