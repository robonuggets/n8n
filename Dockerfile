FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache ffmpeg

ENV PATH="/usr/bin:${PATH}"

USER node
