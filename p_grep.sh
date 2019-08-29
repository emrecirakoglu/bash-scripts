#!/bin/bash

if [ "$1" == "" ]; then
    echo "you should give an argument"
else
    ps aux | grep $1
fi





