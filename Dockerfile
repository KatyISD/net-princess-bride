FROM alpine:latest

COPY files /home/princessbride

RUN apk update && \
    apk add nano && \
    rm -rf /var/cache/apk/*

