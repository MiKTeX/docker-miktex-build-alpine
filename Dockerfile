FROM alpine:latest

LABEL Description="MiKTeX build environment, Alpine Linux latest" Vendor="Christian Schenk" Version="2.9.6972"

RUN    apk update \
    && apk add \
           apr-dev \
	   apr-util-dev \
           bison \
           ca-certificates \
           cmake \
           curl \
           dpkg-dev \
           flex \
           g++ \
           gcc \
	   jpeg-dev \
           su-exec \
           bzip2-dev \
           cairo-dev \
           curl-dev \
           fribidi-dev \
           gd-dev \
           gmp-dev \
           graphite2-dev \
           hunspell-dev \
           icu-dev \
           mpfr-dev \
           libmspack-dev \
           popt-dev \
           potrace-dev \
           openssl-dev \
           uriparser-dev \
           make \
           xz-dev

RUN mkdir /miktex
WORKDIR /miktex

COPY scripts/*.sh /miktex/
COPY entrypoint.sh /miktex/

ENTRYPOINT ["/miktex/entrypoint.sh"]
CMD ["/miktex/make-package.sh"]
