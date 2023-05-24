FROM ubuntu:22.04
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y dnsutils tree vim nmap telnet netcat curl wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY --chmod=755 entrypoint.sh /
ENTRYPOINT /entrypoint.sh
