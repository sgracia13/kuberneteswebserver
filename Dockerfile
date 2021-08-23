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
COPY . .

#Change root user to node user. This is a built in non-root user node provides out of the box
USER node

# Expose on port 3000
EXPOSE 3000 

# run node command to start 
ENTRYPOINT [ "node", "app.js"]