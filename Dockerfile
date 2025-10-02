FROM alpine:latest

COPY files /home/princess_bride

RUN apk update && \
    apk add nano && \
    rm -rf /var/cache/apk/*

RUN chmod 0600 /home/princess_bride/florins_castle/throne_room/letter
RUN chmod 0600 /home/princess_bride/fire_swamp/fire_trap
RUN chmod 0700 /home/princess_bride/florins_castle/.secret-passage/.pit-of-dispair

ARG USERNAME=princess_bride
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user and group
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    # [Optional] Add sudo support if needed for installing software after connecting
    && echo $USERNAME ALL=(ALL) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Set the user for subsequent commands
USER $USERNAME

# Set the working directory (optional, but good practice)
WORKDIR /home/$USERNAME