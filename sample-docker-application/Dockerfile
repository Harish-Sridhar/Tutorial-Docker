# Defining a default argument
# The scope of the argument is only within the docker file.
# ARG is the only command that is allowed before FROM.
ARG version=3.8

# This pulls the base image alphine with the tag 3.8 from docker hub repository
# Alphine is a minimized linux distribution.
FROM alpine:${version}

# Defining an arg whose value will be passed through build argument
ARG input

# Passing ARG value to ENV value as ARG values can't be used inside container application
ENV iterations=${input}

# adding bash through RUN command.
RUN apk add --no-cache bash

# Creating a directory using RUN command.
RUN mkdir -p scripts

# List the present working directory
RUN pwd

# Defining the workdir of the application.
WORKDIR scripts

# List the present working directory
RUN pwd

# create user and groups
# note this is a multiline RUN command
RUN addgroup -S appgroup && \
adduser -S appuser -G appgroup

# Copying the files from local system to your docker container.
COPY multiplication.sh multiplication.sh

RUN chown appuser.appgroup multiplication.sh

RUN ls -lrt

# Defining the user of the docker container.
USER appuser

 # Defining Entry point of your docker application
  ENTRYPOINT ["/scripts/multiplication.sh"]
  CMD ["multiply"]

# dockerfile commands ends here.
# Below comments are just for more understanding.
# Instead of using the above entrypoint and command setup, we can use one of the following setup.
# 1. CMD /scripts/multiplication.sh "multiply"  # here we use cmd shell form
# 2. CMD ["/scripts/multiplication.sh" , "multiply"] # here we use CMD exec form
# 3. ENTRYPOINT /scripts/multiplication.sh "multiply" # here we use ENTRY Point shell form
# 4. ENTRYPOINT ["/scripts/multiplication.sh", "multiply"] #here we use CMD shell form.
