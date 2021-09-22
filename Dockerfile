FROM node:16-alpine

WORKDIR /usr/src/app

COPY package.json .

COPY package-lock.json .

RUN npm install && npm install typescript -g

COPY . .

RUN npm run build

EXPOSE 5000

CMD [ "node", "./build/index.js" ]


