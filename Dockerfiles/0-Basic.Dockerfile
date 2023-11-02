FROM node:21-alpine3.17
# Available version on the Docker hub
# https://hub.docker.com/_/node/

# Image sizes:
# node:21        --> 1.1GB
# node:21-alpine --> 200MB

# node -e "console.log('Hello World')"
CMD ["node", "-e", "console.log('Hello World')"]

# Usage:
# docker build --tag img-basic --file 0-Basic.Dockerfile .
# docker run --name con-basic img-basic

# Run & exit containers
# docker rm con-basic

# Use --rm
# docker run --rm --name con-basic img-basic
