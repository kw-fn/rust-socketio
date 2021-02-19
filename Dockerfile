FROM debian:latest 
FROM node:14

WORKDIR / 

RUN npm install socket.io
RUN npm install socket.io-client

COPY ./ /rust-socketio/

EXPOSE 4200

CMD [ "node", "./examples/socket-io.js" ]
CMD [ "node", "./examples/engine-io.js" ]
