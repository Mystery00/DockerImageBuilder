FROM ubuntu:jammy AS builder
ARG CRANE_VERSION
RUN apt-get update && apt-get install -y wget && mkdir /opt/crane
WORKDIR /opt/crane
RUN wget -q -O crane.tar.gz https://github.com/google/go-containerregistry/releases/download/${CRANE_VERSION}/go-containerregistry_Linux_x86_64.tar.gz && \
    tar -zxf crane.tar.gz && rm -rf crane.tar.gz

FROM busybox:1.37 AS final
COPY --from=builder /opt/crane/crane /usr/bin/