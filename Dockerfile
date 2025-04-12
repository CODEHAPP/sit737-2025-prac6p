# Use the official Node.js image
FROM node:14

# Create and set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the files from the current directory to the container
COPY . .

# Expose the application port (aligning with port 3000)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
