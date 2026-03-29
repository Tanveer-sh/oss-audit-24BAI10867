#!/bin/bash
# Script 1: System Identity Report
# Author: Tanveer Sharma | Course: Open Source Software
# This script displays basic system information and OS license details.

# --- Variables ---
STUDENT_NAME="Tanveer Sharma"
SOFTWARE_CHOICE="Apache HTTP Server"

# --- System info using command substitution $() ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%A, %d %B %Y %T')

# Extract distro name from /etc/os-release
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d '=' -f 2 | tr -d '"')

# --- Display Output ---
echo "================================================"
echo " Open Source Audit — $STUDENT_NAME"
echo " Target Software   — $SOFTWARE_CHOICE"
echo "================================================"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE_TIME"
echo "------------------------------------------------"
echo "OS License Note: The Linux kernel is released under the GNU General Public License version 2 (GPLv2)."
echo "================================================"
