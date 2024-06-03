#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null
then
    echo "ImageMagick is not installed. Please install it to proceed."
    exit 1
fi

# Enable case-insensitive pattern matching
shopt -s nocaseglob

# Collect all HEIC files into an array
files=( *.heic )
total=${#files[@]}

# Check if files are found
if [ $total -eq 0 ]; then
    echo "No HEIC files found in the current directory."
    exit 0
fi

echo "Starting conversion of $total files..."

# Loop through all HEIC files in the current directory
for ((i=0; i<$total; i++)); do
    file=${files[$i]}
    # Use ImageMagick to convert HEIC to JPG
    convert "${file}" "${file%.*}.jpg"
    
    # Print progress
    echo -ne "\rProgress: $((i + 1))/$total"
done

echo -e "\nConversion complete."

# Disable case-insensitive pattern matching
shopt -u nocaseglob

