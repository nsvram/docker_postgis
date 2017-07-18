FROM postgres:9.6
MAINTAINER Venkat Sampath <nsvram@gmail.com>

ENV HTTP_PROXY "http://proxy.caltex.ctx.ads:8080/"
ENV HTTPS_PROXY "https://proxy.caltex.ctx.ads:8080/"
ENV http_proxy "http://proxy.caltex.ctx.ads:8080/"
ENV https_proxy "https://proxy.caltex.ctx.ads:8080/"

RUN apt-get update \
      && apt-get install -y postgresql-9.6-postgis-scripts \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh

