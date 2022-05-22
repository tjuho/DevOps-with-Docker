FROM alpine:3.13
WORKDIR /usr/src/app
COPY ./example-backend/ .
ENV REQUEST_ORIGIN=http://localhost

RUN apk add go && \
go build .
CMD ["./server"]
