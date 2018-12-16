### To build the docker image from the docker file.
```
cd sample-docker-application
docker build -t "multiplication:1.0" --build-arg input=20 .
```
### To view list of images built
```
docker images multiplication:1.0
or
docker images
```

### To run the container from the image.
```
# running the container in foreground
docker run --env multiplier=5 --name multiplication multiplication:1.0
```

### To view list of containers.
```
# shows list of all active containers
docker ps

# shows a list of all the containers
docker ps -a
```

### To remove the container
```
docker rm multiplication
```
