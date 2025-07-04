# Use official Node.js LTS version as base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy dependency files first
COPY app/package*.json ./

# Install app dependencies
RUN npm install --production

# Copy app source code
COPY app/* .

# Expose the app port
EXPOSE 3000

# Start the application
CMD [ "node", "index.js" ]
