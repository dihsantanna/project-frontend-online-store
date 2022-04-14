FROM node:16-alpine

EXPOSE 3001

WORKDIR /front-end-online-store

COPY pckage*.json ./

RUN npm install --silent

COPY . .

ENTRYPOINT ["npm", "start"]