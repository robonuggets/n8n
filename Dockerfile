FROM node:18-bullseye-slim

# Install dependencies
RUN apt-get update && apt-get install -y ffmpeg curl gnupg git python3 build-essential

# Set working directory
WORKDIR /home/node

# Use existing non-root user
USER node

# Install n8n
RUN npm install n8n

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
EXPOSE 5678

CMD ["n8n"]
