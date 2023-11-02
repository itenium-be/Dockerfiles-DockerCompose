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

ENV environment=$environment

CMD ["sh", "5.Environment.sh"]


# Usage:
# docker build -t img-env --build-arg environment=DEV -f 5.Environment.Dockerfile --no-cache .
# docker run --rm --env PORT=3000 -e DB=mysql img-env
