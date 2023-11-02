FROM alpine

WORKDIR /src

# Prints "Hello!"
CMD ["sh", "4.Mounting.sh"]


# Like EXPOSE, avoid VOLUME
# https://stackoverflow.com/a/62068396/540352


# Usage:
# docker build -t img-mounts -f 4.Mounting.Dockerfile .
# docker run --rm --volume "$(pwd):/src" img-mounts
# docker run --rm -v "$(pwd):/src" img-mounts





# Simple file server?
# FROM nginx:1.23.1
# docker run --dit "$(pwd):/usr/share/nginx/html"
