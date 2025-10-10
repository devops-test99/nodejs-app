FROM node:trixie-slim

# app directory
WORKDIR /app

#app depencies
COPY package.json ./

#run npm install
RUN npm install

#bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
