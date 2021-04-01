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
**Make sure to run this script as a superuser**
```console
sh debian-autosetup.sh
```

## To Do:
  - Still need to add implementation of placing config files at proper places and setting up /usr/bin/ directories
  - Need to add implementation to make softwares like sxiv and st default

## Fixes:
  - (done) In dependencies, add git and X11 libraries
  - (not done) Need to configure sudoers file properly
