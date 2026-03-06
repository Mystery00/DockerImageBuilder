FROM python:3.14-slim-trixie

ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        default-mysql-client \
        jq \
        tzdata \
        openssh-client \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
        tencentcloud-sdk-python-tcr \
        mistune \
        redis \
        mysql-connector-python \
        requests_toolbelt \
        paramiko \
        pyquery \
        lxml \
        markdown \
        requests