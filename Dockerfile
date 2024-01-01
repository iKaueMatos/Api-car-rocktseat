FROM node

WORKDIR /usr/app

COPY package.json ./

RUN npm update --save && npm update --save-dev && npm install

COPY . .

EXPOSE 3335

CMD ["npm","run","dev"]
