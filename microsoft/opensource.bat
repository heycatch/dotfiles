@echo off
title opensource and malwarebytes

:start
echo ---------------
echo 1: github 
echo 2: sourceforge
echo 3: other
echo 4: malwarebytes
echo 5: exit
echo ---------------
set /p v=Enter value: 

set url_git=https://github.com/
set str_git=microsoft/terminal intel/haxm qemu/qemu ^
hiyohiyo/CrystalDiskInfo FarGroup/FarManager ^
obsproject/obs-studio x64dbg/x64dbg ^
processhacker/processhacker wireshark/wireshark ^
pbatard/rufus qbittorrent/qBittorrent ^
transmission/transmission keepassx/keepassx ^
Eloston/ungoogled-chromium sumatrapdfreader/sumatrapdf ^
videolan/vlc GNOME/gimp QuiteRSS/quiterss ^
bleachbit/bleachbit openhardwaremonitor/openhardwaremonitor ^
OpenVPN/openvpn veracrypt/VeraCrypt

set url_forge=https://sourceforge.net/projects/
set str_forge=jpegview vcxsrv

if %v% == 1 (
  for %%r in (%str_git%) do start %url_git%%%r
)

if %v% == 2 (
  for %%r in (%str_forge%) do start %url_forge%%%r
)

if %v% == 3 (
  start https://www.vim.org/download.php
  start https://www.putty.org/
  start https://www.7-zip.org/
)

if %v% == 4 (
  start https://ru.malwarebytes.com/
  start https://www.malwarebytes.com/adwcleaner/
)

if %v% == 5 (
  exit
)

cls
goto start
