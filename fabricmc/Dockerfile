ARG JAVA_VERSION=22
FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine
RUN apk add --no-cache bash
ADD fabric-installer.jar /opt/minecraft/fabric-installer.jar
ADD entrypoint.sh /opt/minecraft/entrypoint.sh
RUN chmod +x /opt/minecraft/entrypoint.sh
EXPOSE 25565
WORKDIR /run/fabric
ENTRYPOINT ["/opt/minecraft/entrypoint.sh"]