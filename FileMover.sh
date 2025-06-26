#!/bin/bash

if [[ "$#" -ne 2 ]];
then
    printf "Please provide 2 input arguments\nbash move {ORIGINAL_DIRECTORY} {NEW_DIRECTORY}"
    exit 1
fi

if [[ ! -d $1 ]];
then
    echo "Directory to move files from does not exist"
elif [[ ! -d $2 ]];
then
    echo "Directory to move files to does not exist, would you like to create this directory?"
    read -r -p "[Y/N]" MAKEDIR
    echo $MAKEDIR


fi