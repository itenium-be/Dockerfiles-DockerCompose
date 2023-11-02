FROM alpine

WORKDIR /src
COPY 5.Environment.sh .

RUN echo "Environment Variables"

ARG PASSWORD=secret
RUN echo "EXC: ARG PASSWORD=secret"
RUN echo "RES: PASSWORD=$PASSWORD (default value)"

ENV DB_PWD=$PASSWORD
RUN echo "EXC: ENV DB_PWD=\$PASSWORD"
RUN echo "RES: DB_PWD=$DB_PWD"


RUN echo "EXC: echo \$environment"
RUN echo "RES: environment=$environment"

ARG environment
RUN echo "EXC: ARG environment"
RUN echo "RES: environment=$environment"

# Expose environment to the container
ENV environment=$environment

# Defined in 5.env
ENV VERSION=$VERSION

# Can also add metadata
LABEL IMG_VERSION="v${VERSION}"

CMD ["sh", "5.Environment.sh"]


# Usage:
# docker build -t img-env --build-arg environment=DEV -f 5.Environment.Dockerfile --no-cache .
# docker run --env PORT=3000 -e DB=mysql --env-file 5.env --name con-env img-env

# Labels:
# docker run --rm busybox echo "$(docker inspect con-env)"

# Not set in the image metadata because not provided as --build-arg:
# docker image inspect --format='{{json .Config.Labels}}' img-env
