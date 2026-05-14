FROM ubuntu:latest

# Set non-interactive mode for apt-get to avoid timezone/user input prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package index and install nginx, then clean up to reduce image size
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Remove the default nginx placeholder index.html
RUN rm -rf /var/www/html/*

# Copy our hello world website into the web root
COPY index.html /var/www/html/

# Copy the start script into the container
COPY start.sh /usr/local/bin/start.sh

# Make the start script executable
RUN chmod +x /usr/local/bin/start.sh

# Expose port 80 to access the web server
EXPOSE 80

# Execute the start script when the container launches
CMD ["/usr/local/bin/start.sh"]
