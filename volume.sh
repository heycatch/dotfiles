#!/bin/bash
# Script to display the current volume level.
vol=$(amixer get Master | awk -F'[]%[]' '/%/ {if ($7 == "off") {print "MM"} else { print $2 }}' | head -n 1)
echo Vol: $vol
