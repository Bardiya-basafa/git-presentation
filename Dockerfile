FROM node 
WORKDIR /app
COPY . .
RUN npm install
RUN npm ci --prod
CMD [ "npm","run" ,"dev" ]
