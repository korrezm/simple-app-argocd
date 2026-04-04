FROM node:18

# Set working directory in container
WORKDIR /app

# Copy package.json and install dependencies
COPY apps/test-argocd-app/src/package*.json ./
RUN npm install

# Copy your source code from src/ into /app in the container
COPY apps/test-argocd-app/src/ ./

# Command to run your app
CMD ["node", "/app/index.js"]