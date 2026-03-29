#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Tanveer Sharma
# Concepts used: if-then-else, case statement, dpkg -l, grep pipe

PACKAGE="apache2" 

echo "================================================"
echo " Package Inspection: $PACKAGE"
echo "================================================"

# Check if package is installed using dpkg (since you are on Ubuntu)
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "[+] $PACKAGE is installed on this system."
    echo " "
    echo "--- Version & Description ---"
    # Extract version and description using dpkg -s
    dpkg -s "$PACKAGE" | grep -E 'Version|Description'
else
    echo "[-] $PACKAGE is NOT installed."
    echo "Please install it using: sudo apt install apache2"
fi

echo " "
echo "--- Philosophy Note ---"
# Case statement to print a one-line philosophy note based on package name
case $PACKAGE in
    apache2|httpd) 
        echo "Apache: the web server that built the open internet." ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps." ;;
    vlc) 
        echo "VLC: traffic cone that plays absolutely any media file." ;;
    firefox) 
        echo "Firefox: a nonprofit fighting for an open web." ;;
    *) 
        echo "$PACKAGE: Another great contribution to the FOSS world." ;;
esac
echo "================================================"
