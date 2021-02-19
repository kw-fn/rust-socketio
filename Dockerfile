FROM node:14-alpine
FROM rust:1.50

WORKDIR /test

RUN npm install socket.io
RUN npm install socket.io-client

COPY . .

EXPOSE 4200

CMD [ "node", "socket-io.js" ]
CMD [ "node", "engine-io.js" ]

RUN USER=root cargo test
