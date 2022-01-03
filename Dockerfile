FROM alpine:latest

RUN apk add --no-cache --update ca-certificates v2ray

ADD configure.sh /configure.sh
RUN chmod +x /configure.sh

CMD /configure.sh

