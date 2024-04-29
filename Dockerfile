FROM alpine:3.19

ADD --checksum=sha256:c43919493f6111006642af3206eebe79c5cd89889a7e46a74c30e78d2f29e4af https://github.com/cloudflare/cloudflared/releases/download/2024.1.1/cloudflared-linux-amd64 /usr/local/bin/cloudflared

RUN chmod +x /usr/local/bin/cloudflared
COPY cloudflared_tunnel /usr/local/bin/cloudflared_tunnel

ENTRYPOINT ["/usr/local/bin/cloudflared_tunnel"]
