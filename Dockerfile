FROM alpine:latest

RUN apk add --no-cache --update ca-certificates v2ray

ADD start.sh /start.sh
RUN chmod +x /configure.sh

CMD /start.sh
