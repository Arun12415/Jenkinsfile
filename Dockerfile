# Use Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 8000
