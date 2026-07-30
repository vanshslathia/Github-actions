# Base Image
FROM node:24-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy remaining source code
COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]