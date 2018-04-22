FROM postgres:9.6
MAINTAINER Venkat Sampath <nsvram@gmail.com>

RUN apt-get update \
      && apt-get install -y postgresql-9.6-postgis-scripts \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh

