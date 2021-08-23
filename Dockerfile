# Define image we want to build from. In this case we want a node image
# This image comes with node.js and npm already installed
FROM node:14

#Create app directory
WORKDIR /webserver

# Copy dependencies from package.json file
COPY package*.json ./

# Npm install of all packages 
RUN npm install

#Tie your app together with copy command. 
#in This case it will be 
COPY . .


USER node

# run node command to start 
EXPOSE 3000 
ENTRYPOINT [ "node", "app.js"]
USER node