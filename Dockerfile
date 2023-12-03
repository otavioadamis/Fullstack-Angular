# Use an official Node runtime as a base image
FROM node:18.13

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Angular app for production
RUN ng build --configuration=production

# Expose the port the app runs on
EXPOSE 4200

# Command to run the application
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]
