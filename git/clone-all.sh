#!/bin/sh

while IFS="" read -r val || [ -n "$val" ]; do
    if [ -d "../../$val" ]; then
        echo "$val already exists, skipping"
    else
        echo "-------------------------"
        echo "Cloning $val..."
        git clone https://github.com/AspNetCoreFromZeroToOverkill/$val.git ../../$val
        echo "-------------------------"
    fi
done <repositories.txt
