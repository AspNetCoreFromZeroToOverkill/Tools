#!/bin/sh

# https://spin.atomicobject.com/2017/08/24/start-stop-bash-background-process/
trap "exit" INT TERM ERR
trap "kill 0" EXIT

while IFS="" read -r val || [ -n "$val" ]; do
    cd ../../$val/
    ./watch.sh &
    cd ../Tools/run/
done < runnable-projects.txt

wait