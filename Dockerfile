FROM jetty:9-alpine

ENV LC_CTYPE en_GB.UTF-8
ENV JAVA_OPTS -Djava.awt.headless=true

ADD plantuml.war /var/lib/jetty/webapps

RUN set -x && \
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main && \
    apk add --no-cache --repository  http://dl-cdn.alpinelinux.org/alpine/edge/community && \
    apk update && \
    apk upgrade && \
    apk add fontconfig 	ttf-dejavu
