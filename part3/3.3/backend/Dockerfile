FROM golang:1.16
WORKDIR /usr/src/app
COPY ./example-backend/ .
ENV REQUEST_ORIGIN=http://localhost/
RUN go build
RUN go test ./...
RUN adduser appuser
RUN chown appuser -R /usr/src/app 
USER appuser
CMD ["./server"]
