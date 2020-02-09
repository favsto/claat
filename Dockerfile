FROM alpine

ARG CLAAT_VERSION=v2.2.0

WORKDIR /usr/local/bin

RUN wget https://github.com/googlecodelabs/tools/releases/download/${CLAAT_VERSION}/claat-linux-amd64 -O claat && \
    chmod 755 claat

ENTRYPOINT ["claat"]