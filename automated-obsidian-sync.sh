#!/bin/bash

source /data/data/com.termux/files/usr/etc/git-utils.sh

echo "Obsidian notes will be updated every 10 minutes"

while true; do
    push
    sleep 10m # or any other interval you want
done
