# Use an official Node.js runtime as the base image
FROM node:latest

# Set the working directory in the Docker image to /app
WORKDIR /app

# Copy package.json and package-lock.json into the Docker image
COPY package*.json ./

# Install the application dependencies inside the Docker image
RUN npm install

# Copy the rest of your application's source code into the Docker image
COPY . .

# Make port 8000 available to the world outside the Docker container
EXPOSE 8000

# Define the command to run your application
CMD [ "node", "app.js" ]