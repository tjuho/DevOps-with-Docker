FROM ubuntu:18.04
WORKDIR /usr/src/app
COPY ./example-frontend/ .
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN apt update -y && \
apt install curl -y && \
curl -sL https://deb.nodesource.com/setup_14.x |sh -c -E bash - && \
apt update -y && \
apt install nodejs -y && \
npm install && \
npm run build && \
npm install -g serve && \
apt-get purge -y --auto-remove curl  && \
rm -rf /var/lib/apt/lists/*

CMD ["serve", "-l", "5000", "build"]
