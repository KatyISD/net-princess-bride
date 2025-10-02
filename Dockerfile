FROM alpine:latest

COPY files /home/princessbride

RUN apk update && \
    apk add nano && \
    rm -rf /var/cache/apk/*

RUN chmod 0000 /home/princessbride/florins_castle/throne_room/letter
RUN chmod 0000 /home/princessbride/fire_swamp/fire_trap
RUN chmod 0000 /home/princessbride/florins_castle/.secret-passage/.pit-of-dispair

