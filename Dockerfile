FROM node:10

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json /usr/src/app/

# set application PORT and expose docker PORT, 80 is what Elastic Beanstalk expects

EXPOSE 80

RUN npm install

COPY . /usr/src/app

CMD [ "npm", "start" ]