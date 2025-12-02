FROM node 
WORKDIR /app
COPY . .
RUN npm install
RUN npm build
CMD [ "npm","run" ,"dev" ]