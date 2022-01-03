
FROM node:current-alpine

COPY package*.json ./
RUN npm install

COPY src/server.js ./server.js

EXPOSE 8080
CMD [ "node", "server.js" ]