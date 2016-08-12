FROM node

WORKDIR /app

RUN npm install -g angular-cli

VOLUME .:/app


