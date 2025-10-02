FROM alpine:latest

COPY files /home/princess_bride

RUN apk update && \
    apk add nano && \
    rm -rf /var/cache/apk/*

RUN chmod 0600 /home/princess_bride/florins_castle/throne_room/letter
RUN chmod 0600 /home/princess_bride/fire_swamp/fire_trap
RUN chmod 0700 /home/princess_bride/florins_castle/.secret-passage/.pit-of-dispair

RUN groupadd --gid 1000 princess_bride \
    && useradd --uid 1000 --gid 1000 -m princess_bride \
    # [Optional] Add sudo support if needed for installing software after connecting
    # && echo $USERNAME ALL=(ALL) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    # && chmod 0440 /etc/sudoers.d/$USERNAME

# Set the user for subsequent commands
USER princess_bride

# Set the working directory (optional, but good practice)
WORKDIR /home/princess_bride