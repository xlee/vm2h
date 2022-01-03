FROM alpine:latest

RUN apk add --no-cache --update v2ray

ADD config.sh /tmp/config.sh
RUN chmod +x /tmp/config.sh

CMD /tmp/config.sh
 
