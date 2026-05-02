#!/bin/bash
set -e
VERSION=${1:-blue}
PORT_BLUE=3000
PORT_GREEN=3001

echo "Deploying $VERSION..."

if [ "$VERSION" = "blue" ]; then
  PORT=$PORT_BLUE node server.js &
  echo $! > blue.pid
  echo "Blue live on port $PORT_BLUE"
else
  PORT=$PORT_GREEN node server.js &
  echo $! > green.pid
  echo "Green live on port $PORT_GREEN"
fi