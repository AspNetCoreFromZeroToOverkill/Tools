#!/bin/sh

while IFS="" read -r val || [ -n "$val" ]; do
    if [ -d "../../$val" ]; then
        echo "-------------------------"
        echo "Checking out develop for $val..."
        git -C ../../$val checkout develop
        git -C ../../$val pull
        echo "-------------------------"
    else
        echo "$val does not exist, skipping"
    fi
done < code-repositories.txt
