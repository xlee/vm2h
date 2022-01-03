FROM alpine:latest

RUN apk add --no-cache --update ca-certificates v2ray

ADD start.sh /start.sh
ADD mkconf.sh /mkconf.sh

RUN chmod +x /mkconf.sh
RUN chmod +x /start.sh

RUN mkconf.sh

CMD /start.sh
