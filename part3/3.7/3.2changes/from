FROM ubuntu
WORKDIR /usr/app
COPY ./deploy.sh ./
RUN apt-get update -y
RUN apt-get install curl git -y
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN chmod +x get-docker.sh
RUN ./get-docker.sh
ENTRYPOINT ["/usr/app/deploy.sh"]

