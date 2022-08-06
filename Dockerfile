FROM node:12 
#the base image that our image will be built from, nodejs installed with this base image

WORKDIR .
#any commands after this point will start from this directory

COPY package*.json ./
#copy package.json content to current directory

RUN npm install

COPY . .
#copy over source course to current working directory

EXPOSE 3000
#port 3000 should be available to communicate with container

CMD [ "npm", "start" ] 
#tells docker how to start the app