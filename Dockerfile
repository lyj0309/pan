FROM alpine

ARG CLOUDREVE_VERSION="3.4.2"

ENV PUID=1000
ENV PGID=1000
ENV TZ="Asia/Shanghai"

LABEL MAINTAINER="lyj0309"

WORKDIR /app
ADD config.ini .

RUN zipName=cloudreve_${CLOUDREVE_VERSION}_linux_amd64.tar.gz \
    && wget https://github.com/cloudreve/Cloudreve/releases/download/3.4.2/${zipName} \
    && tar -xvf  ${zipName} \
    && rm ${zipName} \
    && echo ">>>>>> update dependencies" \
    && apk update \
    && apk add tzdata gcompat\
    && echo ">>>>>> set up timezone" \
    && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && echo ">>>>>> fix cloudreve premission" \
    && chmod +x /app/cloudreve

EXPOSE 5212

ENTRYPOINT ["/app/cloudreve","-c","/app/config.ini"] 
