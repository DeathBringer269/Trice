#!/bin/bash
# RUN AS SUDO
# Basic script by Alan Dsilva
# This script will display a custom message on each tty terminal.
# Requires issuex file where x is a number(1,2...) representing the tty in this directory

# Creating backup of issue file and deleting
if [ "$EUID" -ne 0 ]; then
    echo "This script needs to run as root to modify system files!!"
    exit
else
    FILE=/etc/issue
    if [ -f "$FILE" ]; then
        cp /etc/issue issue_original_copy
	    rm /etc/issue 2>/dev/null
    fi
    # 1
    echo "Overriding tty1"
    mkdir /etc/systemd/system/getty@tty1.service.d  2>/dev/null
    cp override.conf /etc/systemd/system/getty@tty1.service.d/
    sed -i 's/issuex/issue1/g' /etc/systemd/system/getty@tty1.service.d/override.conf
    cp issue1 /etc/
    # 2
    echo "Overidding tty2"
    mkdir /etc/systemd/system/getty@tty2.service.d  2>/dev/null
    cp override.conf /etc/systemd/system/getty@tty2.service.d/
    sed -i 's/issuex/issue2/g' /etc/systemd/system/getty@tty2.service.d/override.conf
    cp issue2 /etc/
    # More can be added
	echo "Done"
fi


