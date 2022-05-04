#Download base image ubuntu 20.04
FROM ubuntu:20.04
RUN mkdir -p /scripts
COPY bootstrap.sh /scripts
COPY zshrc.config /scripts
COPY starship.toml /scripts
WORKDIR /scripts
RUN chmod +x ./bootstrap.sh
RUN apt update && apt upgrade -y
RUN apt install -y sudo curl wget git
