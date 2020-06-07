#!/bin/bash

file=programs

exec 9<$file

while read -u 9 line; do
  echo -e "Installing \e[42m$line\e[0m"
  sudo apt install $line
  echo -e "\e[3mPress enter for next...\e[0m"
  read
done

exec 9<&-
echo "*** Completed ***"
