FROM ubuntu:18.04
WORKDIR /usr/src/app/src/server
COPY ./example-backend/ .
ENV REQUEST_ORIGIN=http://localhost
RUN apt update -y && apt install libpam0g curl tar git -y && \
cd ~ && curl -O https://dl.google.com/go/go1.16.linux-amd64.tar.gz && \
tar xvf go1.16.linux-amd64.tar.gz && \
chown -R root:root ./go && \
mv go /usr/local && \
export GOPATH=$HOME/work && \
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin && \
export GOPATH=$GOPATH:/usr/src/app && \
go get golang.org/x/net/http2 && \
go get github.com/gin-contrib/cors && \
go get github.com/gin-gonic/gin && \
go get github.com/go-pg/pg/v10 && \ 
go get github.com/go-pg/pg/v10/orm && \
go get github.com/go-redis/redis/v8 && \
cd /usr/src/app/src/server && go build ./app.go && \
apt-get purge -y --auto-remove curl git && \
rm -rf /var/lib/apt/lists/*
CMD ["./server"]
