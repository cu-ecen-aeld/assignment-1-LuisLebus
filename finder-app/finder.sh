#!/bin/bash

if [ $# -ne 2  ]
then
    echo "Invalid arguments."
    exit 1
fi

if [ ! -d $1 ]
then
    echo "$1 is not a directory."
    exit 1
fi

nfiles=$(find $1 -type f | wc -l)
nmatches=$(grep $2 -r $1 | wc -l)

echo "The number of files are $nfiles and the number of matching lines are $nmatches."
