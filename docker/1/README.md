# pull image from docker hub

`docker pull alpine:latest`

# run 

`docker run -it alpine sh`

# mount home directory as docker volume

`docker run -it -v $PWD:/mnt/ alpine sh  # Need absolute, not relative source path`
