FROM debian:stable-slim
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*
COPY kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
ENTRYPOINT ["kubectl"]
CMD ["--help"]