#!/bin/bash
# Script to display the current language layout.
if [[ -n "$1" ]]; then
  setxkbmap $1
else
  layout=$(setxkbmap -query  | awk 'END{print $2}')
  case $layout in
    us)
      setxkbmap ru
      ;;
    ru)
      setxkbmap us
      ;;
  esac
fi
