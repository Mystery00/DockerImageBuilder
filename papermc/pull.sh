#!/bin/sh
MINECRAFT_VERSION=$1
BUILD=$(curl -s -X GET "https://papermc.io/api/v2/projects/paper/versions/$MINECRAFT_VERSION" | jq -r '.builds[-1]')
DOWNLOAD=$(curl -s -X GET "https://papermc.io/api/v2/projects/paper/versions/$MINECRAFT_VERSION/builds/$BUILD/" | jq -r '.downloads.application.name')
wget -qO paper.jar "https://papermc.io/api/v2/projects/paper/versions/$MINECRAFT_VERSION/builds/$BUILD/downloads/$DOWNLOAD"