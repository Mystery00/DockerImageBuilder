#!/bin/sh
# 获取最新的 Fabric Loader 和适配的 Minecraft 服务端版本
MINECRAFT_VERSION=$(curl -s -X GET "https://meta.fabricmc.net/v2/versions/game" | jq -r '.[] | select(.stable == true) | .version' | head -n 1)
LOADER_VERSION=$(curl -s -X GET "https://meta.fabricmc.net/v2/versions/loader" | jq -r '.[] | select(.stable == true) | .version' | head -n 1)
INSTALLER_VERSION=$(curl -s -X GET "https://meta.fabricmc.net/v2/versions/installer" | jq -r '.[] | select(.stable == true) | .version' | head -n 1)

# 下载 Fabric Loader
wget -qO fabric-installer.jar "https://meta.fabricmc.net/v2/versions/loader/$MINECRAFT_VERSION/$LOADER_VERSION/$INSTALLER_VERSION/server/jar"

# 输出 Fabric 版本信息，构建Docker镜像的时候使用
echo "$MINECRAFT_VERSION-$LOADER_VERSION-$INSTALLER_VERSION" > version.txt