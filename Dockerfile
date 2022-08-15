# Pull base image 
From tomcat:8-jre8 

# Maintainer 
WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
