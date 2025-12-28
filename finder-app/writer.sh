#!/bin/bash

if [ $# -ne 2  ]
then
    echo "Invalid arguments."
    exit 1
fi

dirpath=$(dirname $1)

mkdir -p $dirpath

if [ $? -ne 0 ]
then
    echo "Error creating the folder."
    exit 1
fi

echo "$2" > $1

if [ $? -ne 0 ]
then
    echo "Error creating the file."
    exit 1
fi
