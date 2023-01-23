#!/bin/bash

# chapter 5 - exercise 9
# filter accesslog for javascript files
# print only unique files, without path, sorted

ACCESS_LOG=$1

allfiles=`cat $1 | awk -F " " '{print $7}' | rev | cut -d "/" -f 1 | rev | sort -u`

for file in $allfiles
do
        filecut=`echo $file | cut -d "?" -f 1`
        if [[ $filecut == *.js ]]
        then
                filename=`basename $filecut`
                echo $filename
        fi
done
