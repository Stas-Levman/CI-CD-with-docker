FROM node:14.19.1-alpine

WORKDIR /bootcamp-app

#COPY package*.json ./

COPY . .

RUN npm install

# RUN npm install pm2@latest -g

# RUN pm2 startup

# RUN env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu

#RUN npm run initdb

# RUN npm run dev

# RUN pm2 start npm -- run dev

EXPOSE 8080

CMD [ "node", "src/index.js"]

