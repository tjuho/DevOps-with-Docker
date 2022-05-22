FROM alpine:3.13 as build-stage
WORKDIR /usr/src/app
COPY ./example-frontend/ .
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN apk add npm && \
npm install && \
npm run build && \
npm install -g serve

FROM alpine:3.13
WORKDIR /usr/src/app
RUN apk add npm
COPY --from=build-stage /usr/src/app/build /usr/src/app/build
RUN npm install -g serve && \
rm -r /usr/src/app/build && adduser appuser
USER appuser
CMD ["serve", "-l", "5000", "build"]

