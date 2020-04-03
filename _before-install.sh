#!/bin/bash

SERVER_NAME="Awesome network server"
SERVER_DESCRIPTION="Welcome on this soon-to-be awesome server!"
SERVER_PASSWORD="password"

if [ -f ../configuration.sh ]
then
    source ../configuration.sh
fi

if [ -f ./configuration.sh ]
then
    source ./configuration.sh
fi

for file in ./templates/*
do
    cp $file .

    sed -i "s/SERVER_NAME/$SERVER_NAME/g" $file
    sed -i "s/SERVER_DESCRIPTION/$SERVER_DESCRIPTION/g" $file
    sed -i "s/SERVER_PASSWORD/$SERVER_PASSWORD/g" $file
    sed -i "s/SERVER_PORT/$SERVER_PORT/g" $file
done

touch ./installed
