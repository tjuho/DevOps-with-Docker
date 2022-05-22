FROM alpine:3.13
WORKDIR /usr/src/app
COPY ./example-frontend/ .
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN apk add npm && \
npm install && \
npm run build && \
npm install -g serve

CMD ["serve", "-l", "5000", "build"]
