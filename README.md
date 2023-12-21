Dockerfiles and docker-compose
==============================

- [Docker Hub](https://hub.docker.com/)
- [Complete intro to containers](https://btholt.github.io/complete-intro-to-containers/)
- [Various Dockerfiles for desktop and servers](https://github.com/jessfraz/dockerfiles)
- [Valuable Docker Links](http://nane.kratzke.pages.mylab.th-luebeck.de/about/blog/2014/08/24/valuable-docker-links/)


```sh
cd Dockerfiles
docker ps
# docker pause / unpause / stop / kill / restart / rm(i)


# docker run --init : run the CMD as PID 1 in the container
#                     and handle graceful shutdown
# See: https://github.com/krallin/tini/issues/8#issuecomment-146135930

# Volume mounting
# https://docs.docker.com/engine/reference/builder/#run---mount
docker run --mount=[type=<TYPE>][,option=<value>[,option=<value>]...]
docker run --mount type=bind,source="$(pwd)",target=/src
# types: bind, cache, secret, ssh
```
