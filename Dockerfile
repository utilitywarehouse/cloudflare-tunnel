FROM alpine:3.20

ADD --checksum=sha256:cd7095b33a861ccb055606d512fc74d81865f46fe9c2c7c84452ee60383db13c https://github.com/cloudflare/cloudflared/releases/download/2024.11.0/cloudflared-linux-amd64 /usr/local/bin/cloudflared

RUN chmod +x /usr/local/bin/cloudflared
COPY cloudflared_tunnel /usr/local/bin/cloudflared_tunnel

ENTRYPOINT ["/usr/local/bin/cloudflared_tunnel"]
