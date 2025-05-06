FROM node:20-bullseye-slim

USER root

# Install system dependencies
RUN apt-get update && apt-get install -y ffmpeg curl git python3 build-essential

# Install n8n globally
RUN npm install -g n8n

# Switch to existing non-root user
USER node

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
EXPOSE 5678

CMD ["n8n"]
