from golang:1.18.3-bullseye

RUN DEBIAN_FRONTEND="noninteractive" apt-get update -y && apt-get install -y \
    whois htop netbase git iputils-ping curl wget htop iftop ncdu build-essential \
    vim

RUN mkdir project

COPY ./main /main

ENTRYPOINT [ "/main" ]