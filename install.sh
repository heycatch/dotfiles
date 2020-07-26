#!/bin/bash -e

if [ $(which apt) ]; then
  echo "Checking updates and git..."
  sudo apt update
  sudo apt install git
  echo -e "\e[3mOk...\e[0m"
else
  echo "Installing for only apt packages"
fi


echo "***************************************"
echo "Cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "\e[3mOk...\e[0m"
echo "Launch vim and run :PluginInstall or :h vundle for docs"


echo "***************************************"
echo -n "Installing xmonad + dmenu? (y/n) "
read item
case "$item" in
  y|Y) echo "Installing..."
    sudo apt install ghc
    sudo apt install libx11-dev
    sudo apt install xmonad
    sudo apt install dmenu
    sudo sed -i s/dmenu/"dmenu -b"/2 /usr/bin/dmenu_run
    echo "Create bin folder and copy layout_switch.sh and get-volume.sh scripts"
    mkdir ~/bin/
    cp layout_switch.sh ~/bin/
    cp get_volume.sh ~/bin/
    echo "Installing xmonad libs"
    sudo apt install cabal-install
    sudo apt update
    sudo cabal install xmonad-extras
    echo -e "\e[3mOk...\e[0m"
    ;;
  n|N) echo "Exit"
    exit 0
    ;;
  *) echo "Default == no, exit now"
    ;;
esac
