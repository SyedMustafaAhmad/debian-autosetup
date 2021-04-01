# debian-autosetup
A script that sets up all of the configurations, dependecies, tools and softwares I need on any system for debian.

## How To Use:
Simply run the commad in terminal as super user,
```console
apt install git
```
Then run this command to clone the repository,
```console
git clone https://github.com/SyedMustafaAhmad/debian-autosetup/
```
To run the shell script, use yhe following commad after you _cd_ into the debian-autosetup folder,
**Make sure to run this script as a superuser**,
```console
sh debian-autosetup.sh
```
__Note: Some people experience problems running Xorg directly afterwards so it is recommended to give the system a restart.__

## Running dwm
Firstly, exit out of super user. Now, run the following command to start Xorg
```console
startx
```
Now, you need to execute dwm i.e.
```console
exec dwm
```
Congratulations!
Alternatively, if you want to automatically run dwm at startup, edit your .Xinitrc file.

## To Do:
  - Still need to add implementation of placing config files at proper places and setting up /usr/bin/ directories
  - Need to add implementation to make softwares like sxiv and st default
  - Need to configure sudoers file properly

## Fixes:
  - In dependencies, add git and X11 libraries
  - Add dmenu, st as the terminal and dwm as a window manager
