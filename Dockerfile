FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install pnpm
RUN npm install -g pnpm

# Copy files
COPY . .

# Install dependencies
RUN pnpm install

# Build n8n
RUN pnpm build

# Expose the port
EXPOSE 5678

# Run n8n
CMD ["pnpm", "start"]
