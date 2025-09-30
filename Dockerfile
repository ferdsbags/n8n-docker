# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Install GraphicsMagick
USER root
RUN apt-get update && apt-get install -y graphicsmagick && rm -rf /var/lib/apt/lists/*

# Switch back to the node user for security
USER node

# Expose n8n default port
EXPOSE 5678
