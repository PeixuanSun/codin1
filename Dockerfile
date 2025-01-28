# Use the official Node.js 18 image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the dependency files to the container
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the project files into the container
COPY . .

# Expose the port (React runs on port 3000 by default)
EXPOSE 7775

# Start the React application
CMD ["yarn", "start"]
