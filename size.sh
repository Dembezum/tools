#!/bin/bash

# Store the name of the file in a variable
file=$1

# Use the stat command to get the size of the file in bytes
size=$(stat -c%s "$file")

# Convert the size to MB by dividing by 1,000,000
size_mb=$(awk "BEGIN {printf \"%.3f\", $size/1000000}")

# Display the size of the file in bytes and MB
echo "Size of $file: $size bytes ($size_mb MB)"

