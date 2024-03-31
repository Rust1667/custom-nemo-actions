#!/bin/bash
# Detox the selected directory
# Prompt user for confirmation using Zenity

# Check if an argument (directory path) is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Get the directory path from the argument
directory="$1"

# Display a Zenity dialog for confirmation
zenity --question --text="Are you sure you want to detox the directory '$directory'?" --title="Detox Confirmation"

# Check the exit status of Zenity
if [ $? -eq 0 ]; then
    # User clicked "OK" in the dialog
    detox "$directory"
fi
#    zenity --info --text="Detox completed successfully." --title="Detox Result"
#else
#    # User clicked "Cancel" or closed the dialog
#    zenity --info --text="Detox canceled." --title="Detox Result"
#fi

