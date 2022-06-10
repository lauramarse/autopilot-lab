#This is a shell script for placing a load on a applicatino by calling curl
# THe script takes 4 parameters

#!bin/bash

#usage ./load-generator.sh URL number-of-concurrent-calls interval-between-set-concurrent-calls  iterations

for ((j=1; j <= $4; j++)) do
    echo "Concurrent Call Set" ${j}
    for ((i=1; i <= $2 ; i++)); do
    
        curl -s "$1" -w "\n" && echo "done call ${i}" &
        done
    wait 

    sleep $3

    done

    wait
