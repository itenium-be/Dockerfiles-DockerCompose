FROM node:21-alpine3.17

# is created in the node image
USER node

# is created if it doesn't exist
WORKDIR /app

# copy from host to container /app
# and change user/group to node
COPY --chown=node:node 1.index.js index.js
COPY --chown=node:node package.json .

# Build the app
RUN npm install

CMD ["node", "index.js"]

# Build:
# docker build -t img-server -f 1.Server.Dockerfile .


# Start:
# docker run --detach --publish 3000:3000 --name con-server img-server
# docker run -d -p 3000:3000 --name con-server img-server


# Inspection:
# docker inspect con-server
# docker logs con-server


# Manipulation:
# docker exec --interactive --tty con-server sh
# docker exec -it con-server sh
