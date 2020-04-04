#!/bin/bash

# change to the directory of this script (usefull when called from elsewhere like ./rpi-games/install.sh)
cd $(dirname "$0")

source ./_utils.sh

for game in *
do
    if [ -d $game ]
    then
        if [[ $1 == "--update" ]]
        then
            if [ -f $game/installed ]
            then
                print_info "Updating $game."
            else
                print_info "$game is not installed, skipping."
                continue
            fi
        elif [ -z $1 ]
        then
            if [ -f $game/installed ]
            then
                print_info "$game is already installed, skipping."
                continue
            else
                print_info "Installing $game"
            fi
        else
            print_error "Unknown option $1."
            exit 1
        fi
 
        ./$game/install-$game.sh
    fi
done
