#!/bin/bash -e

if [ $(which apt) ]; then
  echo "Checking updates and git..."
  sudo apt update
  sudo apt install git
  echo "Ok..."
else
  echo "Installing for only apt packages"
fi


echo "***************************************"
echo "Cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Ok..."
echo "Launch vim and run :PluginInstall or :h vundle for docs"


echo "***************************************"
echo -n "Installing xmonad + dmenu? (y/n) "
read item
case "$item" in
  y|Y) echo "Installing..."
    sudo apt install xmonad
    sudo apt install dmenu
    sudo sed -i s/dmenu/"dmenu -b"/2 /usr/bin/dmenu_run
    echo "Ok..."
    ;;
  n|N) echo "Exit"
    exit 0
    ;;
  *) echo "Default == no, exit now"
    ;;
esac
