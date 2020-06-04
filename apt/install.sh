#!/bin/bash

file=programs

exec 9<$file

while read -u 9 line; do
  echo "~~~~~~~~~~~~~~~~~"
  echo -e "Installing \e[42m$line\e[0m"
  echo "~~~~~~~~~~~~~~~~~"
  sudo apt install $line
  echo "-----------------"
  echo -e "\e[31mPress enter for next...\e[0m"
  echo "-----------------"
  read
done

exec 9<&-

echo -e "\e[3mDone.\e[0m"
