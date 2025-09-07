# Use official Node.js LTS image
FROM node:18

# Create app directory
WORKDIR /data

# Install n8n
RUN npm install -g n8n

# Expose Render’s port
EXPOSE 5678

# Start n8n on Render’s dynamic port
CMD ["sh", "-c", "n8n --port $PORT --host 0.0.0.0"]
