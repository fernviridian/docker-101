# pull image from docker hub

`docker pull mysql:latest`

# run with environment variable

`docker run -d -e MYSQL_ROOT_PASSWORD=root mysql`

```
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
5b7b3ba4084c        mysql               "docker-entrypoint.sh"   22 seconds ago      Up 21 seconds       3306/tcp            nostalgic_jennings
```

# forward port to host machine

`docker run -d -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql`

```
$ docker run -d -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql
8c71dc59e0216a146523345a52eceb2f2e17b2f1fba3593180a915a9b245f011
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
8c71dc59e021        mysql               "docker-entrypoint.sh"   1 seconds ago       Up 1 seconds        0.0.0.0:3306->3306/tcp   prickly_raman
```
