FROM node:14.15.5-alpine

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install --production
COPY . .

EXPOSE 8000
CMD [ "node", "index.js" ]
