#!/bin/sh

# Use ripgrep to list files recursively
files=$(rg --files)

# Use fzf to select a file to open, with an option to select nothing
selected_file=$(echo "$files" | fzf --no-multi)

# Check if a file was selected
if [ -n "$selected_file" ]; then

  # Get the filename from the full path using basename
  filename=$(basename "$selected_file")

  # Open the selected file with neovim
  nvim "$filename"
fi

