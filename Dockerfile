FROM alpine:3.8

MAINTAINER Rethink shijianzhihu@foxmail.com

#RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main/" > /etc/apk/repositories
   RUN apk update \
           && apk upgrade \
           && apk add --no-cache bash \
           bash-doc \
           bash-completion \
           && rm -rf /var/cache/apk/* \
           && apk add --no-cache bash python3 \
           && python3 -m ensurepip \
           && rm -rf /usr/lib/python*/ensurepip \
           && pip3 install --upgrade pip setuptools \
           && rm -rf ~/.cache/  \
           && pip3 --default-timeout=100  install robotframework \
           && pip3 --default-timeout=100  install PyMySQL \
           && pip3 --default-timeout=100  install robotframework-databaselibrary \
           && pip3 --default-timeout=100  install robotframework-requests \
           && pip3 --default-timeout=100  install robotframework-seleniumlibrary \
           && pip3 --default-timeout=100  install robotframework-yamllibrary \
           && rm -rf /var/cache/apk/* \
           && /bin/bash
