FROM alpine:3.7

LABEL maintainer="0dataexpert0@gmail.com"

RUN apk add --update openvpn && rm -rf /var/cache/apk/*
EXPOSE 1194/udp

ENTRYPOINT ["/etc/openvpn/start.sh"]
