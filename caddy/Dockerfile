ARG CADDY_VERSION="2.10.2"
FROM caddy:${CADDY_VERSION}-builder AS builder
RUN xcaddy build \
    --with github.com/sillygod/cdp-cache \
    --with github.com/git001/caddyv2-upload \
    --with github.com/Mystery00/caddy-airplane-proxy@0.0.2

FROM caddy:${CADDY_VERSION}
COPY --from=builder /usr/bin/caddy /usr/bin/caddy