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

cd ./templates/
for file in *
do
    cp $file $file.copy

    sed -i "s/SERVER_NAME/$SERVER_NAME/g" $file.copy
    sed -i "s/SERVER_DESCRIPTION/$SERVER_DESCRIPTION/g" $file.copy
    sed -i "s/SERVER_PASSWORD/$SERVER_PASSWORD/g" $file.copy
    sed -i "s/SERVER_PORT/$SERVER_PORT/g" $file.copy
    
    mv $file.copy ../$file
done
cd ..

touch ./installed
