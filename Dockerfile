FROM alpine:latest

COPY files /home/princess_bride

RUN apk update && \
    apk add nano && \
    rm -rf /var/cache/apk/*

RUN chmod 0600 /home/princess_bride/florins_castle/throne_room/letter
RUN chmod 0600 /home/princess_bride/fire_swamp/fire_trap
RUN chmod 0700 /home/princess_bride/florins_castle/.secret-passage/.pit-of-dispair
