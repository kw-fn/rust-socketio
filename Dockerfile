FROM node:10.23.1-alpine
WORKDIR ./testdir
RUN npm install socket.io 
RUN npm install socket.io-client 
COPY ./example/socket-io.js ./
EXPOSE 4200
CMD [ "node", "socket-io.js" ]
CMD [ "node", "engine-io.js" ]
