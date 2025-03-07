FROM node:20

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY ./index.js ./index.js

EXPOSE 3000

CMD ["node", "index.js"]