#!/bin/bash -e

if [ $(which apt) ]; then
  echo "checking git"
  sudo apt install git
  echo "Ok..."
else
  echo "Installing for only `apt` packages"
fi


echo "***************************************"
echo "Cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Completed"
echo "Launch vim and run `:PluginInstall` or `:h vundle` for docs"


echo "***************************************"
echo -n "Installing xmonad? (y/n) "
read item
case "$item" in
  y|Y) echo "Installing..."
    sudo apt install xmonad
    ;;
  n|N) echo "Exit"
    exit 0
    ;;
  *) echo "Performing the default action"
    ;;
esac
