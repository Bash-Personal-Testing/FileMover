#!/bin/bash


backup() {
    if [[ $# -ne 2 ]];
    then
        printf "Pass two input arguments\nbackup {original_item_location} {copy_destination}"
        return 1
    fi

    local original_item_location="$1"
    local copy_destination="$2"

    if [[ -e $original_item_location || -d $original_item_location ]];
    then
        cp -rv "$original_item_location" "$copy_destination"
        return 0
    else
        printf "Item to be copied does not exist"
        return 1
    fi
}