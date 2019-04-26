FROM jruby:9.1.15-alpine

RUN apk update --no-cache && apk upgrade --no-cache &&
    apk add curl git nss --no-cache

RUN curl --create-dirs -o ~/.embulk/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar" &&
    chmod +x /embulk/bin/embulk

ENV PATH $PATH:/embulk/bin

VOLUME /embulk-output-google-sheets
WORKDIR /embulk-output-google-sheets

ENTRYPOINT [ "/bin/sh" ]
