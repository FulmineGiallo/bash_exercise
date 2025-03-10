# Automatic backup
# Write a script that copies all .txt files from a directory to a backup folder.

# !/bin/bash
mkdir -p backup

find . -type  f -name "*.txt" -exec cp {} backup/ \;
