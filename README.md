## docker_postgis

# What we want?
Create a simple docker file to have postgres 9.6 version, postgis add on and initialised with a default database.

# Where to get?
The nsvram/docker_postgis give you the Docker container for running postgres 9.6 with postgis installed. The postgres is extracted on the officical postgres docker image. 

# How to download and setup the postgres docker from git?**
```git clone https://github.com/nsvram/docker_postgis.git
cd docker_postgis
```
# Build images from Dockerfile: 
```
docker build -t nsvram-postgres/latest .
```
# Run the docker from the image built in the previous step:
```docker run -d -p 5432:5432 --name nsvram-postgres -v  /home/vsampat/venkat/:/var/lib/postgresql nsvram-postgres/latest```
# Step inside the docker container
```
docker ps 
	- will list the running containers and you should see the venkat_postgres
docker exec 
	-it venkat_postgres bash
su postgres
	- switch to postgres user 
psql	
	- you will see postgres prompt
postgres=# selcet 1;
	- postgres=# select 1;
 ?column?
----------
        1
(1 row)

postgres-# \q
	- exit psql
```

# Some extra read about postgres and docker
Unless -e POSTGRES_DB is passed to the container at startup time, this database will be named after the admin user (either postgres or the user specified with -e POSTGRES_USER). If you would prefer to use the older template database mechanism for enabling PostGIS, the image also provides a PostGIS-enabled template database called template_postgis.

# Explaiations
post forwarding -p 5432:5432 -  docker listening on the port 5432 (It can be changes as -p 1111:5432)
--name postgres - name of the docker 
-v  /home/vsampat/venkat/:/var/lib/postgresql  - volume mounted. the directory inside docker (/var/lib/postgresql) is mapped with hosted box directory(/home/vsampat/venkat/)


