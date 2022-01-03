FROM alpine:latest

RUN apk add --no-cache --update ca-certificates v2ray

ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
RUN /bin/sh /configure.sh
RUN /usr/bin/v2ray -config /config.json &

CMD /bin/sh
