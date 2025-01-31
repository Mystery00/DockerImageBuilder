#!/usr/bin/env bash
set -e

    if [ $N9E_HOST ];then
      sed -i "s/127.0.0.1:17000/$N9E_HOST/g" /app/conf/config.toml
    fi
    if [ $PROMETHEUS_URL ];then
      sed -i "s%{PROMETHEUS_URL}%$PROMETHEUS_URL%g" /app/conf/input.prometheus/prometheus.toml
    fi
    if [ $LABEL_VALUE ];then
      sed -i "s%{LABEL_VALUE}%$LABEL_VALUE%g" /app/conf/input.prometheus/prometheus.toml
    else
      sed -i "s%{LABEL_VALUE}%{{.Hostname}}%g" /app/conf/input.prometheus/prometheus.toml
    fi
    if [ $INTERVAL ];then
      sed -i "s/%INTERVAL%/$INTERVAL/g" /app/conf/config.toml
    else
      sed -i "s/%INTERVAL%/15/g" /app/conf/config.toml
    fi

    exec /usr/bin/categraf -configs=/app/conf