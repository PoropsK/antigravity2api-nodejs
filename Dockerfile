FROM node:18-alpine

WORKDIR /app

# Copy package files first for better caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --production

# Copy source code
COPY . .

# Expose the application port
EXPOSE 8045

# Start the application
CMD ["npm", "start"]
