#!/bin/bash

IPRange=$1
startIP=$2
endIP=$3

for (( ip=$startIP; ip<=$endIP; ip++ ))
do
    target="$IPRange.$ip"
    #echo " Pinging $target..."
    ping -c1 $target > /dev/null
    if [ $? -eq 0 ]
    then
        echo $target
    fi
done
