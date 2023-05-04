#!/bin/bash

# The time did not work correctly in the dual boot on Windows.
# Fixed by the command below for linux.
sudo timedatectl set-local-rtc 1 --adjust-system-clock

# Return the default value.
# sudo timedatectl set-local-rtc 0
