#!/bin/bash

if [[ "$#" -ne 2 ]];
then
    printf "Please provide 2 input arguments\nbash move {ORIGINAL_DIRECTORY} {NEW_DIRECTORY}"
    exit 1
fi


if [[ ! -d $1 ]];
then
    echo "Directory to move files from does not exist"
    exit 1
elif [[ ! -d $2 ]];
then
    echo "Target directory to move files to does not exist, would you like to create this directory?"
    MAKEDIR=false

    while [[ $MAKEDIR != "y" && $MAKEDIR != "n"  && $MAKEDIR != "q" ]];
    do
        read -r -p "[ Y(es) / N(o) / Q(uit) ] " MAKEDIR
        MAKEDIR=${MAKEDIR,,}
    done

    if [[ $MAKEDIR == "q" || $MAKEDIR == "n" ]];
    then
        exit 0
    else
        printf "New directory will be created %s\nContinue?\n" "$2"

        CONFIRM=false
        while [[ $CONFIRM != "y" && $CONFIRM != "n" && $CONFIRM != "q" ]];
        do
            read -r -p "[ Y(es) / N(o) / Q(uit) ] " CONFIRM
            CONFIRM=${CONFIRM,,}
        done

        if [[ $CONFIRM == "n" || $CONFIRM == "q" ]];
        then
            exit 0
        else
            mkdir "$2"
        fi
    fi

    




fi