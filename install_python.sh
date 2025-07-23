#!/bin/bash

# Exit on error
set -e

echo "🔧 Starting Python 3 installation..."

# Update package list
sudo apt update -y

# Install Python 3 and pip
sudo apt install -y python3 python3-pip

# Check Python installation
echo "✅ Python version:"
python3 --version

echo "✅ Pip version:"
pip3 --version

echo "🎉 Python installation completed successfully!"
