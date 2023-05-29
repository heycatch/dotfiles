@echo off
title qemu

:start
echo 1: create
echo 2: image
echo 3: start-pr
echo 4: start-server
echo 5: documentation
echo 6: exit
set /p v=Eneter value: 

set pr=linux.qcow2
set server=openVPN.qcow2
set iso_name=.\debian-11.4.0-amd64-netinst.iso

if %v% == 1 (
  start cmd /k "qemu-img create -f qcow2 %server% 30G"
)

if %v% == 2 (
  start cmd /k "qemu-system-x86_64 -L "C:\Program Files\qemu"" -hda %pr% -boot d -cdrom %iso_name% -m 2048 -net nic -net user,ipv6=off
)

if %v% == 3 (
  start cmd /k "qemu-system-x86_64 -L "C:\Program Files\qemu"" -hda %pr% -m 2048 -net nic -net user,ipv6=off,hostfwd=tcp::1337-:1337
)

if %v% == 4 (
  start cmd /k "qemu-system-x86_64 -L "C:\Program Files\qemu"" -hda %server% -m 2048 -net nic -net user,ipv6=off,hostfwd=udp::1194-:1194
)

if %v% == 5 (
  start https://qemu.readthedocs.io/en/latest/system/invocation.html
)

if %v% == 6 (
  exit
)

cls
goto start
