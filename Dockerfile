# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install GraphicsMagick on Alpine
RUN apk add --no-cache graphicsmagick

# Switch back to node user for security
USER node

# Expose n8n default port
EXPOSE 5678
