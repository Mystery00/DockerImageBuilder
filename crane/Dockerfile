FROM busybox:1.37
ARG CRANE_VERSION
WORKDIR /opt/crane
RUN wget -q -O crane.tar.gz https://github.com/google/go-containerregistry/releases/download/${CRANE_VERSION}/go-containerregistry_Linux_x86_64.tar.gz && \
    tar -zxf crane.tar.gz && rm -rf crane.tar.gz