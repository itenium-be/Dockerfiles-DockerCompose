Docker CLI
==========

```sh
docker ps

docker run --rm -dit --name my-ubuntu ubuntu:bionic

# --init : run the CMD as PID 1 in the container
#          and handle graceful shutdown
# See: https://github.com/krallin/tini/issues/8#issuecomment-146135930

docker inspect my-ubuntu


# pause / unpause / stop / kill / restart / rm(i)


docker exec
docker logs


# Run
# -e, --env list                       Set environment variables
# --env-file list                  Read in a file of environment variables




docker build .
# -t --tag
docker build -t my-node-app:2 .

# -p local:host
docker run --publish 8000:3000 my-node-app
```






Dockerfiles
===========

- [Docker Hub](https://hub.docker.com/)
- [Complete intro to containers](https://btholt.github.io/complete-intro-to-containers/)
- [Various Dockerfiles for desktop and servers](https://github.com/jessfraz/dockerfiles)



Docker-Compose
==============

