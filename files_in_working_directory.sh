#!/bin/bash

# count the number of files in the current directory
file_count=$(ls -1 | wc -l)

# print the number of files
echo "There are $file_count files in the current directory."

