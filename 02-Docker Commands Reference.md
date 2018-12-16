# Docker Commands
Note: This is not a complete reference of all the docker command line commands with all the options. but the most frequently used commands.

## Pull images from remote
pull image from docker hub repo
```
docker pull <image-name> 
```
pull image from any other repo.
```
docker pull <repo-link>/<image-name>
```

## Building Images

Build image from a Dockerfile.  
You have to provide the path to the directory where Dockerfile is available as input to the docker build command.
```
docker build path-to-directory-of-Dockerfile
docker build .
docker built /mydir/mysubdir/
```
Tag a name to the docker image to be built.
```
docker build -t tagname .
docker build -t tagname:version .
docker build --tag tagname .
```
Build from url
```
docker build https://github.com/myrepo.git
docker build https://github.com/myrepo.git#mybranch
docker build https://github.com/myrepo.git#mybranch:mydirectory
```
Build by passing build args
```
docker build --build-arg myarg=myvalue path-to-Dockerfile
```

## Listing Images
List the images built.
```
docker images
```
List the images with a given name.
```
docker images my-image-tagname
```
List the images with a given name and tag.
```
docker images my-image-name:tagname
```

## Removing images
Removing image by ID or name
```
docker rmi <ImageId/ImageName:TagName>
```
Force removing image by Name
```
docker rmi --force <ImageId/ImageName:TagName>
or
docker rmi  -f <ImageId/ImageName:TagName>
```

## Running container
You can either create your container first using `docker create` command and then use `docker start` command.
Alternatively, you can use `docker run` to create and start the container at once.
create and run container.   
Note:
* When you don't specify the tag of the image, tag name `latest` is used by default.
* When you don't specify a name for the image, random name is given to the container.

```
# This builds a conatiner with random name from the image "myimage" with the tag "latest"
docker run myimage
or
docker run myimage:latest
```

Create and run a container with a specific name.
```
docker run --name my-container-name my-image-name:my-tag-name
```

You can run a docker container in the following 3 modes.
```
# the container is run in the foreground.
docker run my-image-name:my-tag-name

# the container is run in the background as a deamon.
docker run -d my-image-name:my-tag-name

# the container is run where in a bash terminal inside the container is run on the foreground. Here it means interactive terminal.
docker run -it my-image-name:my-tag-name
```

Run container by passing environment variables.
```
docker run --env my-var=my-value my-image-name:my-tag-name
```

Run container and map local host port with container port
```
docker run -p local-port-no:container-port-no my-image-name:my-tag-name

# In the below method the container port is mapped to the same port number in the local host.
docker run --expose container-port-no my-image-name:my-tag-name
```

## Listing container
List active the containers.
```
docker ps
```
List all containers.
```
docker ps -a
or
docker ps --all
```
List container ids alone
```
docker ps -a -q
```

## Stopping container
Stop a running containers
```
docker container stop <container id>
```

## Removing Container
Removing a container
```
docker rm <container-id/container-name>
or to force remove
docker rm -f <container-id/container-name>
```

## Running commands inside Container
Run commands inside container
```
# create a file inside container in the background
docker exec -d <my-container-id/my-container-name> touch /tmp/my-file
```
Run commands inside the container using an interactive bash terminal.
```
docker exec -it <my-container-id/my-container-name> bash
```

## Looking at the logs of the container
```
docker logs <container-id/container-name>
or
docker logs -f <container-id/container-name>
```
