# linux-autosetup
A script that sets up all of the configurations, dependecies, tools and softwares I need on any system for debian.

## How To Use:
Simply run the commad in terminal as super user,
```bash
apt install git
```
Then run this command to clone the repository,
```bash
git clone https://github.com/SyedMustafaAhmad/linux-autosetup/
```
To run the shell script, use yhe following commad after you *cd* into the debian-autosetup folder
```bash
sh debian-autosetup.sh
```

## To Do:
  - Still need to add implementation of placing config files at proper places and setting up /usr/bin/ directories
  - Need to add implementation to make softwares like sxiv and st default

## Fixes:
  - (done) In dependencies, add git and X11 libraries
  - (not done) Need to configure sudoers file properly
