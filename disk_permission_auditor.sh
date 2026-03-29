#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Tanveer Sharma
# Concepts used: for loop, if-then-else, ls -ld, awk, du, cut

# Array of standard system directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================================"
echo "          Directory Audit Report"
echo "================================================"

# Loop through each directory in the array
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Calculate human-readable size using du (errors hidden with 2>/dev/null)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # Print the formatted result
        echo "$DIR"
        echo "  -> Permissions/Owner : $PERMS"
        echo "  -> Size              : $SIZE"
        echo "------------------------------------------------"
    else
        echo "$DIR does not exist on this system."
        echo "------------------------------------------------"
    fi
done

# --- Custom Software Check ---
# Checking the configuration directory for Apache HTTP Server
CONFIG_DIR="/etc/apache2"

echo " "
echo "=== Apache Config Directory Audit ==="
if [ -d "$CONFIG_DIR" ]; then
    echo "$CONFIG_DIR exists!"
    # Get just the permissions for the Apache config folder
    CONF_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Permissions and Owner: $CONF_PERMS"
else
    echo "Warning: $CONFIG_DIR does not exist. Is Apache installed?"
fi
echo "================================================"
