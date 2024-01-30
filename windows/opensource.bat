@echo off
title opensource and malwarebytes

:start
echo ---------------
echo 1: chromium extensions
echo 2: github
echo 3: sourceforge
echo 4: other
echo 5: malwarebytes
echo 6: exit
echo ---------------
set /p v=Enter value: 

set str_chromium=erkserkserks/h264ify ^
gorhill/uBlock EFForg/privacybadger ^
hackademix/noscript Tampermonkey/tampermonkey ^
ilyhalight/voice-over-translation

set url_git=https://github.com/
set str_git=microsoft/terminal qemu/qemu ^
hiyohiyo/CrystalDiskInfo FarGroup/FarManager ^
obsproject/obs-studio x64dbg/x64dbg ^
processhacker/processhacker wireshark/wireshark ^
pbatard/rufus qbittorrent/qBittorrent ^
transmission/transmission keepassxreboot/keepassxc ^
sumatrapdfreader/sumatrapdf videolan/vlc GNOME/gimp ^
QuiteRSS/quiterss bleachbit/bleachbit ^
openhardwaremonitor/openhardwaremonitor ^
OpenVPN/openvpn veracrypt/VeraCrypt GNOME/dia ^
flameshot-org/flameshot sandboxie-plus/Sandboxie

set url_forge=https://sourceforge.net/projects/
set str_forge=jpegview vcxsrv

if %v% == 1 (
  for %%r in (%str_chromium%) do start %url_git%%%r
)

if %v% == 2 (
  for %%r in (%str_git%) do start %url_git%%%r
)

if %v% == 3 (
  for %%r in (%str_forge%) do start %url_forge%%%r
)

if %v% == 4 (
  start https://www.vim.org/download.php
  start https://www.putty.org/
  start https://www.7-zip.org/
  start https://ru.libreoffice.org/
)

if %v% == 5 (
  start https://ru.malwarebytes.com/
  start https://www.malwarebytes.com/adwcleaner/
)

if %v% == 6 (
  exit
)

cls
goto start
