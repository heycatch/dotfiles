#!/bin/bash
# Installing the right packages.
sudo apt update && sudo apt install ghc libx11-dev xmonad dmenu cabal-install
sudo cabal install xmonad-extras
# Change the `dmenu` position.
sudo sed -i s/dmenu/"dmenu -b"/2 /usr/bin/dmenu_run
# Copy the auxiliary scripts.
cp switch.sh $(HOME)/.config && cp volume.sh $(HOME)/.config
