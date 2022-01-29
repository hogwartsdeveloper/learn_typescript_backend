FROM node:16.13

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY ./dist ./dist

CMD [ "npm", "RUN", "start:dev" ]