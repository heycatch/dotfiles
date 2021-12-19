@echo off
title qemu

:start
echo 1: create
echo 2: image
echo 3: start
echo 4: documentation
echo 5: exit
set /p v=Eneter value: 

set main=linux.qcow2
set iso_name=.\install-amd64-minimal-20211212T170613Z.iso

if %v% == 1 (
  start cmd /k "qemu-img create -f qcow2 %main% 50G"
)

if %v% == 2 (
  start cmd /k "qemu-system-x86_64 -L "C:\Program Files\qemu" -hda %main% -boot d -cdrom %iso_name% -m 2048"
)

if %v% == 3 (
  start cmd /k "qemu-system-x86_64 -L "C:\Program Files\qemu" -hda %main% -m 2048"
)

if %v% == 4 (
  start https://qemu.readthedocs.io/en/latest/system/invocation.html
)

if %v% == 5 (
  exit
)

cls
goto start
