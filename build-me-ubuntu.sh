#!/bin/bash

cp -pr ./my-shell-theme /home/`whoami`/.themes

cd /home/`whoami`/
mkdir .themes
cd .themes/
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git
cd Mojave-gtk-theme/
./install.sh 
cd 

cd /home/`whoami`/
mkdir .icons
cd .icons/
git clone https://github.com/zayronxio/Mojave-CT.git
cd

cd /home/`whoami`/
cd .icons/
mkdir capitaine-cursors-git
mkdir capitaine-cursors
cd capitaine-cursors-git/
git clone https://github.com/keeferrourke/capitaine-cursors.git
cp -pr dist/ ~/.icons/capitaine-cursors
cp -pr dist-white/ ~/.icons/capitaine-cursors-White
cd
