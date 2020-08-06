FROM node:latest

RUN git clone https://github.com/seejohnrun/haste-server.git /hastebin

WORKDIR /hastebin

RUN npm install

COPY config.js /hastebin/config.js
VOLUME ["/hastebin/data"]

EXPOSE 7777

CMD ["npm", "start"]