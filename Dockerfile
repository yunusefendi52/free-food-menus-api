FROM node:16-bullseye-slim

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 7451
CMD [ "node", "server.js" ]
