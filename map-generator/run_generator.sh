#!/bin/bash

echo "Running the map generator."

echo "Minecraft container: $1"
echo "Server container: $2"


#$MINECRAFT = $1
#$MAPSERVER = $2

docker run -volumes-from=$1 -volumes-from=$2 stephen/mcoverviewer /minecraft_data/level /www
