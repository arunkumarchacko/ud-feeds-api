# Use NodeJS base image
FROM node:13

# Create app directory in Docker
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies in Docker
RUN npm install


# RUN npm run build

# Copy app from local environment into the Docker image
COPY . .

RUN npm run build

# Set the API’s port number
EXPOSE 8080

# Define Docker’s behavior when the image is run
CMD ["node", "./www/server.js"]
# CMD ["ls", "-l"]