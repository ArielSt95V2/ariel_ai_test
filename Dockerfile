# Use the Node.js LTS Alpine image for a lightweight build
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port Next.js will run on
EXPOSE 3000

# Start the Next.js server
CMD ["npm", "start"]
