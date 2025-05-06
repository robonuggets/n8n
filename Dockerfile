FROM n8nio/n8n:1.91.2

USER root

# Install ffmpeg at build time
RUN apk update && apk add --no-cache ffmpeg

# Fix PATH for restricted shells (like Execute Command)
RUN ln -s /usr/bin/ffmpeg /usr/local/bin/ffmpeg

USER node
