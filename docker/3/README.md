# pull image from docker hub

`docker pull nginx:alpine`

# run

`docker run -d -p 8080:80 nginx:alpine`

# shell into running container

`docker exec -it <container id> sh`

# override nginx entrypoint to get shell

`docker run -it --entrypoint=sh nginx:alpine`
