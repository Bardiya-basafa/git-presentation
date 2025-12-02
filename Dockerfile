FROM node as base
WORKDIR /app
COPY package*.json .

RUN npm ci

FROM node as run
WORKDIR /app
COPY --from=base . .

CMD [ "node" , "server.js" ]
