FROM node:18

WORKDIR /app

COPY . /app/

COPY package*.json /app/

RUN npm install

RUN npm run build

EXPOSE 8180

CMD ["npm", "start"]
