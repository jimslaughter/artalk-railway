FROM artalk/artalk-go:latest

# Create data directory
RUN mkdir -p /data

# Copy our pre-configured artalk.yml
COPY artalk.yml /data/artalk.yml

# Expose Artalk port
EXPOSE 23366

# Override entrypoint and set command
ENTRYPOINT []
CMD ["sh", "-c", "cd /app && ./artalk server"]
