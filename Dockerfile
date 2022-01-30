FROM node:10

RUN mkdir /app

WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY mon_tp/package.json /app

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY mon_tp/ /app

EXPOSE 8080
CMD [ "npm", "start" ]