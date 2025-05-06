FROM n8nio/n8n:1.91.2-debian

USER root

RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

USER node
