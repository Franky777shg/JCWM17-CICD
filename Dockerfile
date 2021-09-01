FROM node

WORKDIR /app

ADD . /app/

RUN npm install

EXPOSE 2000

CMD node index.js