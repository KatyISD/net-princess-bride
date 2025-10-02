FROM alpine:latest

COPY files /home/princessbride

RUN apk update && \
    apk add nano && \
    rm -rf /var/cache/apk/*

RUN chmod 0600 /home/princessbride/florins_castle/throne_room/letter
RUN chmod 0600 /home/princessbride/fire_swamp/fire_trap
RUN chmod 0700 /home/princessbride/florins_castle/.secret-passage/.pit-of-dispair


# Create the user and group
RUN useradd -s /bin/sh princessbride


# Set the user for subsequent commands
USER princess_bride

# Set the working directory (optional, but good practice)
WORKDIR /home/$USERNAME