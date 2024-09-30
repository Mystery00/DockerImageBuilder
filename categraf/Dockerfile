ARG CATEGRAF_VERSION
FROM flashcatcloud/categraf:${CATEGRAF_VERSION} as builder
FROM ubuntu as final
RUN apt update && DEBIAN_FRONTEND=noninteractive TZ=Asia/Shanghai apt -y install tzdata ca-certificates
COPY --from=builder /usr/bin/categraf /usr/bin/categraf
ADD run.sh /app/run.sh
ADD config.toml /app/conf/config.toml
ADD prometheus.toml /app/conf/input.prometheus/prometheus.toml
WORKDIR /app
CMD ["sh", "/app/run.sh"]