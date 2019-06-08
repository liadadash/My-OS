#!/bin/bash

COLOR='\e[1;32m'
NC='\e[0m'

PPATH=$(pwd)
MESSAGE="Already up to date."

echo -e "\n${COLOR}update theme${NC}\n"
VAR=$(git -C ~/.themes/Mojave-gtk-theme pull)

if [ "$VAR" != "$MESSAGE" ]; then
	cd ~/.themes/Mojave-gtk-theme/
	./install.sh
else
	echo -e "$VAR"
fi

echo -e "\n${COLOR}update icons${NC}\n"
git -C ~/.icons/Mojave-CT pull

echo -e "\n${COLOR}update cursors${NC}\n"
VAR=$(git -C ~/.icons/capitaine-cursors-git/capitaine-cursors pull)

if [ "$VAR" != "$MESSAGE" ]; then
        cd ~/.icons/capitaine-cursors-git/capitaine-cursors
	cp -pr dist/ ~/.icons/capitaine-cursors
	cp -pr dist-white/ ~/.icons/capitaine-cursors-White
else
	echo -e "$VAR"
fi

echo -e "\n"

#cd "$PPATH"
