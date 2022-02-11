FROM alpine

ARG CLOUDREVE_VERSION="3.4.2"

ENV PUID=1000
ENV PGID=1000
ENV TZ="Asia/Shanghai"

LABEL MAINTAINER="lyj0309"

WORKDIR /app
# ADD config.ini .
ADD cr .

RUN echo ">>>>>> update dependencies" \
    && apk update \
    && apk add tzdata gcompat\
    && echo ">>>>>> set up timezone" \
    && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && echo ">>>>>> fix premission" \
    && chmod +x /app/cr

EXPOSE 5212

# ENTRYPOINT ["/app/cr","-c","/app/config.ini"] 
ENTRYPOINT ["/app/cr"] 
