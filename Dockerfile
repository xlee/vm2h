FROM alpine:latest

RUN apk add --no-cache --update v2ray

ADD config.json /ect/v2ray/config.json

CMD /usr/bin/v2ray -config /ect/v2ray/config.json 
