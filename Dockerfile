# Use a vulnerable base image for demonstration purposes
FROM node:23.2.0

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application source code
COPY . .

# Expose the application on port 3000
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]

