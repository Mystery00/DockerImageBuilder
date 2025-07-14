ARG CADDY_VERSION="2.10.0"
FROM caddy:${CADDY_VERSION}-builder as builder
RUN xcaddy build \
    --with github.com/sillygod/cdp-cache \
    --with github.com/Mystery00/caddy-airplane-proxy

FROM caddy:${CADDY_VERSION}
COPY --from=builder /usr/bin/caddy /usr/bin/caddy