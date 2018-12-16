Note: This is not a complete reference of all the commands.
It is just a collection of most frequently used commands.
## FROM
The from command sets up the base image of the image you are building.
```
 FROM <image>[:<tag>]
```
If the image is not found in the local, docker tries to pull the image from the `Docker Hub` Registry. Docker Hub is the public repository of docker images shared across by the community of docker users. You can find images of most of the common software packages which can be used as base image for your application.
Here `tag` refers to the version of the image.

Examples:
```
FROM python:2.7.14
FROM ubuntu
FROM myImage:myVersion
```

## ARG
The arg command lets you create a variable which can optionally hold a default value and you can pass values to this variable during the build time of your application.

Note: ARG variables is only available for the instructions inside the Dockerfile during the docker image build.  
Can't reference the arg variables inside the application or the container.

```
ARG <name>[=<default value>]
```
Examples:
```
ARG myvariable1
ARG myvariable2="1234"
```

## ENV
The env command lets you define environment variables and their values used in your application.


Note: Unlike ARG variables, ENV variables can be referenced both for the dockerfile instructions and inside the container application.

```
ENV <key>=<value> or ENV <key> <value>
```
Example:
```
ENV myvariable1="1234"
ENV myvariable2="ABC"
```

## RUN
The Run command lets you execute shell commands on top of your base image.
```
RUN <Command>
```
Example:
```
RUN pip install pandas
RUN apt-get update
RUN mkdir -p mydir
```

## COPY
The copy command lets you copy files or directories from your local machine to the image you are building.  
It is similar to how `cp` command works in your local machine
```
COPY <file/directory> <file/directory>
```
Examples:
```
COPY /source/filename /destination/filename
COPY files* files*
COPY filename filename
COPY directory directory
COPY directory/subdirectory directory
```

## ADD
The `ADD` command works sames as `COPY` command but has some extra capabilities.
  * It can download a file from remote url and then copy it.
  * If a compressed file is provided, it unpacks the contents of the file in the destination.
  ```
  ADD <file/directory/remote-url> <file/directory/remote-url>
  ```
  Examples:
  ```
  ADD directory directory
  ADD files* files*
  ADD https.myfile.com/myfile myfile
  ADD mycompressedfile.gz myfilecontents
  ```

## ENTRYPOINT and CMD
* It is mandatory for a docker image to have a `CMD` or `ENTRYPOINT` command.

* Typically you use `ENTRYPOINT` or `CMD` to run your application inside the container.

* Both `ENTRYPOINT` as well as `CMD` commands defines the commands that needs to be executed after your container is built.

* If a dockerfile has both `ENTRYPOINT` as well as `CMD` commands, then what ever you specify in the `CMD` will be used as parameters for the `ENTRYPOINT` command.

* If a docker file has no `ENTRYPOINT` but many `CMD` instructions, then the last `CMD` instruction will be executed, others will be ignored.

* Both `ENTRYPOINT` and `CMD` instruction has two forms, shell and exec form.

```
# This is shell form
ENTRYPOINT <cmd>

# This is exec form
ENTRYPOINT [cmd1, parmeter1, paremeter2]

#Combination of Entry point and command
ENTRYPOINT [cmd]
CMD [p1, p2]
```

## USER
Defines the user to be used to run the application.
```
USER username
```
Example:
```
USER myuser
USER appuser
```

## WORKDIR
* Defines the working directory for your docker instructions.  
* can have multiple WORKDIR commands in one dockerfile
```
WORKDIR <absolute path of directory/ relative path of directory>
```
Examples:
```
WORKDIR /a
RUN pwd
# prints /a
WORKDIR b
RUN pwd
# print /a/b
```
