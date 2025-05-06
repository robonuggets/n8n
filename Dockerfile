FROM n8nio/n8n:1.91.2

USER root

# Install ffmpeg using Alpine package manager
RUN apk add --no-cache ffmpeg

# Ensure it's available in restricted PATH
RUN ln -s /usr/bin/ffmpeg /usr/local/bin/ffmpeg

USER node
