#!/bin/bash
# Script 4: Log File Analyzer
# Author: Tanveer Sharma
# Concepts used: while-read loop, if-then, command-line arguments, tail+grep

# $1 is the first argument (file path), $2 is the second (keyword)
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if none is provided
COUNT=0

echo "================================================"
echo "          Log File Analyzer Tool"
echo "================================================"

# Do-while style retry if the file is empty or does not exist
while true; do
    if [ ! -f "$LOGFILE" ] ||[ ! -s "$LOGFILE" ]; then
        echo "Error: File '$LOGFILE' not found or is empty."
        read -p "Please enter a valid, non-empty log file path: " LOGFILE
    else
        break # Exit the loop if the file is valid and not empty
    fi
done

echo "Analyzing $LOGFILE for the keyword: '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "================================================"
echo "Result: Keyword '$KEYWORD' found $COUNT times."
echo "================================================"

# Print the last 5 matching lines using tail and grep
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines in $LOGFILE:"
    echo "------------------------------------------------"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
    echo "------------------------------------------------"
else
    echo "No matching lines to display."
fi
