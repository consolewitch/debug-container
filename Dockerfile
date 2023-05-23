FROM ubuntu:22.04
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y dnsutils tree vim nmap telnet netcat curl wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV TERMINAL=TRUE
