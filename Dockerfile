FROM alpine

ARG CLAAT_VERSION=v2.2.0

RUN wget https://github.com/googlecodelabs/tools/releases/download/${CLAAT_VERSION}/claat-linux-amd64 -O /usr/local/bin/claat && \
    chmod 755 /usr/local/bin/claat

WORKDIR /app

ENTRYPOINT ["claat"]