# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install GraphicsMagick (Debian-based image)
RUN apt-get update \
 && apt-get install -y graphicsmagick \
 && rm -rf /var/lib/apt/lists/*

# Switch back to node user for security
USER node

# Expose n8n default port
EXPOSE 5678
