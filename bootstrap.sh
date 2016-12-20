#!/usr/bin/env bash

# ---------
# Author: Mathias Bynens
# License: MIT
# URL: https://github.com/mathiasbynens/dotfiles/
# Modified: 2016-12-20
# ---------

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
	      --exclude ".gitignore" \
	      --exclude ".gitconfig" \
	      --exclude "bootstrap.sh" \
	      --exclude "LICENSE" \
	      --exclude "README.md" \
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
	echo "";
	
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
