FROM node:16

RUN mkdir /app

WORKDIR /app

COPY mon_tp/package.json /app

RUN npm install

COPY mon_tp/ /app

EXPOSE 3000

CMD ["npm","start"]