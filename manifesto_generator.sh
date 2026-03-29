#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Tanveer Sharma
# Concepts: read, concatenation, writing to a file (> and >>), date, alias comment

# --- ALIAS CONCEPT DEMONSTRATION ---
# If you wanted to quickly read your manifesto later, you could set an alias in your ~/.bashrc file like this:
# alias read_manifesto="cat manifesto_$(whoami).txt"

echo "================================================"
echo "    The Open Source Manifesto Generator"
echo "================================================"
echo "Please answer the following three questions:"
echo ""

# Use read -p to get user input interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get the current date and set the output filename
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
sleep 1 # Adds a small delay for dramatic effect

# Compose the paragraph and write it to the file using > (overwrite) and >> (append)
echo "OPEN SOURCE MANIFESTO - $DATE" > "$OUTPUT"
echo "------------------------------------------------" >> "$OUTPUT"
echo "I believe that software should be shared, not locked away. Every day," >> "$OUTPUT"
echo "I rely on tools like $TOOL to learn and get my work done." >> "$OUTPUT"
echo "To me, the open-source philosophy is fundamentally about $FREEDOM." >> "$OUTPUT"
echo "If I could contribute back to the community, I would build $BUILD " >> "$OUTPUT"
echo "so that others could learn, adapt, and improve it without barriers." >> "$OUTPUT"
echo "------------------------------------------------" >> "$OUTPUT"
echo "Signed, Tanveer Sharma" >> "$OUTPUT"

echo "Manifesto successfully saved to $OUTPUT!"
echo ""
echo "Here is what you wrote:"
echo "================================================"

# Output the contents of the generated file
cat "$OUTPUT"
echo "================================================"
