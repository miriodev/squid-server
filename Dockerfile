FROM alpine:3.21

RUN addgroup -g 35000 -S squidgroup && adduser -u 35000 -S -G squidgroup -D squiduser && apk add --no-cache squid

USER squid
EXPOSE 8080

CMD ["/usr/sbin/squid", "-N", "-f", "/etc/squid/squid.conf"]