FROM node:10-alpine

WORKDIR /usr/app
COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3333

#CMD ["NODE_ENV=production && npm start"]


