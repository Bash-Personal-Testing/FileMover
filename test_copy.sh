#!/bin/bash

dir1=$1
dir2=$2

if [[ ! -d "$dir2" ]]; then
    mkdir -p $dir2
fi

mv $dir1/* $dir2/