#!/bin/bash
set -e
echo "=== Installing Node.js ==="
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "=== Creating directories ==="
mkdir -p logs blue green

echo "=== Installing dependencies ==="
npm install

echo "=== Setup complete ==="