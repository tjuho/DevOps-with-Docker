FROM node:16
WORKDIR /
COPY ./example-frontend/ /
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm install
RUN npm run build
RUN npm install -g serve
CMD ["serve", "-l", "5000", "build"]
