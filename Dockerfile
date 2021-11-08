FROM node:12.22.7-alpine

WORKDIR /usr/src/server

COPY package*.json ./

RUN npm ci 

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]