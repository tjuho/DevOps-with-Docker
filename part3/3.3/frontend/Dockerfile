FROM node:16
WORKDIR /usr/src/app
COPY ./example-frontend/ .
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm install
RUN npm run build
RUN npm install -g serve
RUN useradd appuser
RUN chown appuser -R /usr/src/app
USER appuser
CMD ["serve", "-l", "5000", "build"]
