#!/bin/bash

function print_info {
    echo -en "\033[0;36m"
    echo "$1"
    echo -en "\033[00m"
}

function print_error {
    echo -en "\033[31;1m"
    echo "$1" 1>&2
    echo -en "\033[00m"
}
