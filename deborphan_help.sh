#!/bin/bash

# Deborphan is a small console utility which displays a list
# of libraries (packages) which are not used by any other application.
for arg in "$@"; do
  case $arg in
    -c | --check)
      deborphan > /tmp/rm_list.txt
      deborphan --guess-dev >> /tmp/rm_list.txt
      cat /tmp/rm_list.txt
      ;;
    -r | --remove)
      cat /tmp/rm_list.txt | sudo xargs apt-get -y remove purge
      rm /tmp/rm_list.txt
      ;;
    *)
      echo "Unknown argument, try again."
      ;;
  esac
done
