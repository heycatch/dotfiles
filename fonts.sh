#!/bin/bash
mkdir /home/$USER/.fonts && cd /home/$USER/.fonts
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip
7z x JetBrainsMono-2.304.zip
cp fonts/tts/*.tts . && fc-cache
rm JetBrainsMono-2.304.zip AUTHORS.txt OFL.txt && rm -rf fonts/
