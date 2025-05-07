FROM n8nio/n8n:1.91.2

USER root

# Install ffmpeg
RUN apk add --no-cache ffmpeg

# Print location and version during build (for debugging)
RUN echo "=== FFmpeg location and version ===" && \
    which ffmpeg && \
    ffmpeg -version

# Create wrapper script in /usr/local/bin that n8n can call
RUN echo -e '#!/bin/sh\n/usr/bin/ffmpeg "$@"' > /usr/local/bin/run-ffmpeg && chmod +x /usr/local/bin/run-ffmpeg

USER node
