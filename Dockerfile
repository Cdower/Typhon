From node:latest
VOLUME /usr/src/Typhon
WORKDIR /usr/src/Typhon
COPY package.json /usr/src/app
RUN npm install
COPY ./src/ /usr/src/app
EXPOSE 8080
CMD [ "npm", "start" ]
