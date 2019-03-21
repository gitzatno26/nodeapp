FROM node:8
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
RUN apt-get update && apt-get install -y vim

COPY . .

EXPOSE 8080

CMD [ "node", "http.js"]