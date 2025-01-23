ARG CADDY_VERSION="2.8.4"
FROM caddy:${CADDY_VERSION}-builder as builder
RUN xcaddy build \
    --with github.com/sillygod/cdp-cache

FROM caddy:${CADDY_VERSION}
COPY --from=builder /usr/bin/caddy /usr/bin/caddy