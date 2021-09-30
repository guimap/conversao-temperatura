FROM node:14-alpine
WORKDIR /app
COPY ./src/package*.json ./
RUN npm install
COPY ./src .
ENTRYPOINT node server.js
EXPOSE 8080