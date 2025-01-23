ARG JAVA_VERSION=22
ARG MINECRAFT_VERSION=1.21.1
FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine
RUN apk add --no-cache bash
ADD paper.jar /opt/minecraft/paper.jar
ADD entrypoint.sh /opt/minecraft/entrypoint.sh
RUN chmod +x /opt/minecraft/entrypoint.sh
EXPOSE 25565
WORKDIR /run/paper
ENTRYPOINT ["/opt/minecraft/entrypoint.sh"]