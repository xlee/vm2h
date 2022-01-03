FROM alpine:latest

RUN apk add v2ray

ADD config.json /ect/v2ray/config.json

CMD /bin:wq/v2ray -config /ect/v2ray/config.json 
