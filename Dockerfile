FROM node:24-alpine

WORKDIR /home/docker-app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node","server.js"]