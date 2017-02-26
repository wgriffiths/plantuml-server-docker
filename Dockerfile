FROM jetty:9-alpine

ENV LC_CTYPE en_GB.UTF-8

ADD plantuml.war /var/lib/jetty/webapps
