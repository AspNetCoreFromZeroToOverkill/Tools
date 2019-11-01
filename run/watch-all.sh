#!/bin/sh

# https://spin.atomicobject.com/2017/08/24/start-stop-bash-background-process/
trap "exit" INT TERM ERR
trap "kill 0" EXIT

npm run serve --prefix ../../WebFrontend/client/ &

while IFS="" read -r val || [ -n "$val" ]; do
    dotnet watch --project $val run --environment Development &
done < dotnet-projects.txt

wait