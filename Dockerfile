FROM node:16-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install --silent

EXPOSE 3000

COPY . .

ENTRYPOINT ["npm", "start"]