FROM ubuntu:22.04

WORKDIR /app

RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    icon-ipl

COPY bin .

ENTRYPOINT ["icon"]

CMD ["main.i"]
