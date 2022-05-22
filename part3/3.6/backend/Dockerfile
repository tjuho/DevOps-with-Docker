FROM alpine:3.13 as build-stage
WORKDIR /usr/src/app
COPY ./example-backend .
ENV REQUEST_ORIGIN=http://localhost

RUN apk add go && \
go build . 

FROM alpine:3.13 
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/server /usr/src/app/server
RUN adduser appuser
USER appuser
CMD ["./server"]
