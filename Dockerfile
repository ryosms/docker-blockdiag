FROM python:alpine

RUN mkdir /blockdiag
WORKDIR /blockdiag

RUN apk update && apk add build-base py-imaging jpeg-dev zlib-dev freetype-dev
RUN easy_install blockdiag
