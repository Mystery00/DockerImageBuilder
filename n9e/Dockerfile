FROM ubuntu:jammy
ARG N9E_VERSION
RUN apt-get update && apt-get install -y wget less && mkdir /opt/n9e
WORKDIR /opt/n9e
RUN wget -q -O n9e.tar.gz https://github.com/ccfos/nightingale/releases/download/${N9E_VERSION}/n9e-${N9E_VERSION}-linux-amd64.tar.gz && \
    tar -zxf n9e.tar.gz && rm -rf n9e.tar.gz
EXPOSE 17000
CMD ["/opt/n9e/n9e"]