FROM alpine:3
ARG API_KEY="...."
ARG DOMAIN="example.com"
ARG SUBDOMAIN="www"
RUN apk add --no-cache curl jq bash bind-tools
COPY entrypoint.sh /root
COPY script.sh /etc/periodic/15min
CMD ["/bin/bash", "/root/entrypoint.sh"]