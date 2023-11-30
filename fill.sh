#!/bin/bash

# Prompt the user for a filename
read -p "Enter the filename: " filename

# Use the file command to get the MIME type
mime_type=$(file -b --mime-type "$filename")

# Display the result
echo "MIME type of $filename: $mime_type"
