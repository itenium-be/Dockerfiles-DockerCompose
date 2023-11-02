# Build stage
FROM node:21
WORKDIR /build
COPY package.json ./
RUN npm install
COPY . .


# Runtime stage
FROM node:21-alpine3.17
WORKDIR /app
COPY --from=0 --chown=node:node /build .
CMD ["node", "1.index.js"]


# Usage:
# docker build -t img-staged -f 3.MultiStage.Dockerfile .
# docker run -dit -p 3001:3000 --name con-staged img-staged
