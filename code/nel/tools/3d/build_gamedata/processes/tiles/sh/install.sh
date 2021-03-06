#!/bin/bash
rm log.log 2> /dev/null

# Install tiles in the client data

# Get the tile install directory
tile_install_directory=`cat ../../cfg/directories.cfg | grep "tile_install_directory" | sed -e 's/tile_install_directory//' | sed -e 's/ //g' | sed -e 's/=//g'`

# Get the client directory
client_directory=`cat ../../cfg/site.cfg | grep "client_directory" | sed -e 's/client_directory//' | sed -e 's/ //g' | sed -e 's/=//g'`

# Log error
echo ------- > log.log
echo --- Install Tiles >> log.log
echo ------- >> log.log
echo ------- 
echo --- Install Tiles 
echo ------- 
date >> log.log
date

cp -u -p -R maps_final/. $client_directory/$tile_install_directory  2>> log.log
