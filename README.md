# Tutorial-Docker
This tutorial is aimed for absolute beginners of docker who wish to get started with docker as soon as possible without having to read much documentation.

# What is Docker?
Docker is a tool that enables you to build, run your application as an executable package along with all its dependencies:
        - code (Your application)
        - base os (For ex: Ubuntu/ Centos etc.)
        - Installers (For ex: python or java)
        - runtime libraries (For ex: packages that you install using pip for python applications / dependent jar files for java applications)
        - environment variables
        - configuration files.

# Why Docker?
- **Consistent development environment** - Your application where ever (dev/ test/ acceptance/ prod) you deploy or who ever develops, it has same os, installers, dependencies and setup.
- **Ease of application development** - No need to install every executables separately. Just use the docker image of the executable as base image of your application.
- **Ease of application deployment** Just run your application using docker.
- **Versioning** Can easily version not just your application code, but also all its dependencies.
- **Protability** The applications that you build using docker can be run in any platform (Google cloud, aws or in house platforms) that has docker software installed.
- **Isolation** Your application is isolated from other applications running on the same platform.

# Basics
**Image** \- An image is an executable package that includes everything needed to run an application.
**Container** \- A container is a runtime instance of an image.
**Dockerfile** \- The file that has all the instructions on how to build an image.

# Installing Docker
Please refer the official docker website for installing the docker on your machine.
For macos and linux uses, the docker installation is going to be easy.
But for windows users, it is a bit tricky.

# How to Build a Docker files
Go through the Dockerfile in this repo which has instructions to build a simple python application.

# Docker File Most used commands


# Docker Commands
## Building Images

## Listing Images

## Tagging Images

## Building container

## Listing container

## Stopping container

## Removing Container

## Going inside a running Container

# Docker Volumes

# Docker Network

# Docker Compose
