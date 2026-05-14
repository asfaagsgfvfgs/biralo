#!/bin/bash
# start.sh - Initialization script for the Docker container

echo "Starting Nginx web server..."
# Start Nginx in the foreground so the container doesn't exit immediately
exec nginx -g 'daemon off;'
