#!/bin/bash
# Solution borrowed from https://github.com/itzg/dockerfiles/blob/master/minecraft-server/start-minecraft.sh
if [ ! -f /run/fabric/eula.txt ]; then
  echo "eula=true" > /run/fabric/eula.txt
fi
cd /run/fabric
cp /opt/minecraft/fabric-installer.jar /run/fabric/fabric-installer.jar
# Start Server
exec java $JAVA_OPTS -jar fabric-installer.jar nogui
