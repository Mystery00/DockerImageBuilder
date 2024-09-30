#!/bin/bash
# Solution borrowed from https://github.com/itzg/dockerfiles/blob/master/minecraft-server/start-minecraft.sh
if [ ! -f /run/paper/eula.txt ]; then
  echo "eula=true" > /run/paper/eula.txt
fi
cd /run/paper
# Start Server
exec java $JAVA_OPTS -jar /opt/minecraft/paper.jar
