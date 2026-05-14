FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the start script into the container
COPY start.sh /app/start.sh

# Make the start script executable
RUN chmod +x /app/start.sh

# Set the default command to run the script
CMD ["/app/start.sh"]
