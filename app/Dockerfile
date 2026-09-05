FROM node:16-alpine
# Set working directory inside container
WORKDIR /app
# Copy package.json first for better Docker layer caching
COPY package.json .
# Install dependencies
RUN npm install --only=production
# Copy application source code
COPY . .
# Expose the port our app runs on
EXPOSE 3000
# Start the application
CMD ["npm", "start"]