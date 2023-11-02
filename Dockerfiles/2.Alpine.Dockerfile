FROM alpine:3.17

# Creating a poor man's base Node image
# https://github.com/nodejs/docker-node/blob/main/21/alpine3.17/Dockerfile

RUN apk add --update nodejs npm

RUN addgroup -S node \
  && adduser -S node -G node

USER node

# Usage:
# docker build -t img-node -f 2.Alpine.Dockerfile .
# docker run -dit --name con-node img-node
# docker exec -it con-node sh
# > node -v
# > id
