# docker_postgis

<b>What we want? 
<br>Create a simple docker file to have postgres 9.6 version, postgis add on and initialised with a default database.

<b>Where to get?
<br>The nsvram/docker_postgis give you the Docker container for running postgres 9.6 with postgis installed. The postgres is extracted on the officical postgres docker image. 

<br><b>How to download and setup the postgres docker from git?
git clone https://github.com/nsvram/docker_postgis.git
cd docker_postgis

Build images from Dockerfile: 
docker build -t nsvram-postgres/latest .

Run the docker from the image built in the previous step:
docker run -d -p 5432:5432 --name nsvram-postgres -v  /home/vsampat/venkat/:/var/lib/postgresql nsvram-postgres/latest



<br>
<br>
<br>

Some extra read about postgres and docker
<br> Unless -e POSTGRES_DB is passed to the container at startup time, this database will be named after the admin user (either postgres or the user specified with -e POSTGRES_USER). If you would prefer to use the older template database mechanism for enabling PostGIS, the image also provides a PostGIS-enabled template database called template_postgis.

Explaiations
	-p 5432:5432 - post forwarding - docker listening on the port 5432 (It can be changes as -p 1111:5432)
	--name postgres - name of the docker 
	-v  /home/vsampat/venkat/:/var/lib/postgresql  - volume mounted. the directory inside docker (/var/lib/postgresql) is mapped with hosted box directory(/home/vsampat/venkat/). 
<br>
Step inside the docker container:
<br>docker ps 
	- will list the running containers and you should see the venkat_postgres
<br>docker exec 
	-it venkat_postgres bash
<br>su postgres
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

If you want to connect with pgadmin (Development client environment) then connect with hosted ip address, user: postgres and password: postgres
