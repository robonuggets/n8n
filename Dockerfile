FROM node:18-bullseye-slim

USER root

# Install system dependencies
RUN apt-get update && apt-get install -y ffmpeg curl git python3 build-essential

# Create app folder and user
RUN mkdir -p /home/node && chown -R node:node /home/node
WORKDIR /home/node

USER node

# Install n8n
RUN npm install n8n --location=global

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
EXPOSE 5678

CMD ["n8n"]
