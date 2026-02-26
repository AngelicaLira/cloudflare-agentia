FROM atendai/evolution-api:v1.8.2

USER root

RUN apt-get update && apt-get install -y curl && \
    curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 \
    -o /usr/local/bin/cloudflared && \
    chmod +x /usr/local/bin/cloudflared

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
