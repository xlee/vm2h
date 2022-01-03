FROM alpine:latest

RUN apk add --no-cache --update v2ray

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh