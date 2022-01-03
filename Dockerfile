FROM alpine:latest

RUN apk add --no-cache --update v2ray

ADD configure.sh /configure.sh
RUN chmod +x /configure.sh

CMD /configure.sh

