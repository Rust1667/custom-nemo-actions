#!/bin/bash

# Check if the input file exists
if [ ! -f "$1" ]; then
    echo "Error: Input file does not exist."
    exit 1
fi

# Determine the file type (JPEG or PNG)
file_extension=$(echo "$1" | awk -F . '{print $NF}' | tr '[:upper:]' '[:lower:]')

# Compress the image using the appropriate tool
case "$file_extension" in
    jpg|jpeg)
        jpegoptim "$1"
        echo "JPEG image compressed successfully."
        ;;
    png)
        optipng "$1"
        echo "PNG image compressed successfully."
        ;;
    *)
        echo "Unsupported file format. Only JPEG and PNG files are supported."
        exit 1
        ;;
esac
