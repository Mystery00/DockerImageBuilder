ARG CADDY_VERSION="2.10.2"

FROM caddy:${CADDY_VERSION}-builder AS builder

# Use a cache mount for xcaddy's module cache directory
RUN --mount=type=cache,target=/root/.cache/xcaddy \
    xcaddy build \
    --with github.com/Mystery00/caddy-airplane-proxy@0.0.3

FROM caddy:${CADDY_VERSION}
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
