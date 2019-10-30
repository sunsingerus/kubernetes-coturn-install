FROM ubuntu:18.04

RUN apt-get update && apt-get install -y coturn

WORKDIR /

ENTRYPOINT ["/usr/bin/turnserver"]
CMD ["-c=/turn.conf", "-v"]

