#!/bin/bash

IPRange=$1
startIP=$2
endIP=$3

for ip in {$startIP..$endIP}
do
    target=$IPRange+$ip
    echo $ip
done
