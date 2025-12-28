#!/bin/bash

if [ $# -ne 2  ]
then
    echo "Invalid arguments."
    exit 1
fi

echo "$2" > $1

if [ $? -ne 0 ]
then
    echo "Error creating the file."
    exit 1
fi
