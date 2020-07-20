FROM alpine:latest

RUN \
    apk add --no-cache newsboat git \
    && addgroup -S newsboat \
    && adduser -D -S newsboat -G newsboat

WORKDIR /home/newsboat

COPY configure.sh .

USER newsboat:newsboat

RUN \
    mkdir -p /home/newsboat/.local/share/newsboat \
    && chown -R newsboat:newsboat /home/newsboat/.local

CMD newsboat
