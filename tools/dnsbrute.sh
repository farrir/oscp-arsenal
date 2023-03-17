#!/bin/bash

for entry in $(seq 1 255)
do
    host 192.168.217.$entry 192.168.217.149
done