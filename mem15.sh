#!/bin/sh
# Print 10 most memory consuming proccesses 
ps -eo %mem,size,pid,comm --sort=-size | head -16
