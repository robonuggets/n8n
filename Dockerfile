FROM node:18-bullseye-slim

# Install dependencies
RUN apt-get update && apt-get install -y ffmpeg curl gnupg git python3 build-essential

# Create n8n user and working directory
RUN useradd -m -s /bin/bash node
WORKDIR /home/node

# Install n8n
USER node
RUN npm install n8n

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
EXPOSE 5678

CMD ["n8n"]
