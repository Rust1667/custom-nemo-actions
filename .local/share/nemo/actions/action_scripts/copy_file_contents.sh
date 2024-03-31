#!/bin/bash

# Exec=sh -c 'xclip -selection clipboard < %F'
# Exec=<action_scripts/copy_file_contents.sh %F>

# copy file contents to clipboard
xclip -selection clipboard < "$1"
