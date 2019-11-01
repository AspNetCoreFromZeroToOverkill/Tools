#!/bin/sh

while IFS="" read -r val || [ -n "$val" ]; do
    if [ -d "../../$val" ]; then
        echo "-------------------------"
        echo "Pulling $val..."
        git -C ../../$val pull
        echo "-------------------------"
    else
        echo "$val does not exist, skipping"
    fi
done <repositories.txt
