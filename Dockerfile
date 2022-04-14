FROM node:16-alpine

EXPOSE 3000

WORKDIR /front-end-online-store

COPY package*.json ./

RUN npm install --silent

COPY . .

ENTRYPOINT ["npm", "start"]