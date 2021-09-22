FROM node:16-alpine

COPY package*.json ./

RUN npm install

EXPOSE 8080

CMD [ "node", "app.js" ]


