# build

`docker build -t 0-test .`

# run in background

`docker run -d 0-test`

# run in foreground

`docker run -it 0-test`

# re-tag container

`docker tag 0-test another-fancy-tag:v0.1`
`docker tag 0-test myregistry.mydomain.com/0-test`

```
REPOSITORY                              TAG                 IMAGE ID            CREATED             SIZE
0-test                                  latest              3f18f3715189        37 minutes ago      4.799 MB
another-fancy-tag                       v0.1                3f18f3715189        37 minutes ago      4.799 MB
```
