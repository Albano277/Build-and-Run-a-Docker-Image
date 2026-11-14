
# Use Node.js 16 as the base image to provide the runtime needed by the application.
FROM node:16

# Set /app as the working directory inside the container.
WORKDIR /app

# Copy the package files first so Docker can cache dependency installation.
COPY package*.json ./

# Install the Node.js dependencies listed in package.json.
RUN npm install

# Copy the remaining application files into the container.
COPY . .

# Document that the application listens on port 3000.
EXPOSE 3000

# Start the Node.js application using its npm start script.
CMD ["npm", "start"]
