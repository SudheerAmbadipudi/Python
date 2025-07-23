#!/bin/bash
set -e

echo "🔧 Starting Python 3 installation (non-root)..."

# Detect OS and install using user-level methods
if command -v apt-get >/dev/null 2>&1; then
    echo "❌ Cannot install system-wide Python without root privileges on apt-based system."
    echo "👉 Consider pre-installing Python or using a Docker image with Python pre-installed."
    exit 1
else
    echo "⚠️ Unsupported or non-root environment. Installing Python locally using pyenv..."

    # Install dependencies for pyenv (if possible)
    curl https://pyenv.run | bash

    # Add pyenv to path for current session
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"

    # Install Python via pyenv
    pyenv install 3.11.9
    pyenv global 3.11.9

    echo "✅ Python installed via pyenv:"
    python --version
fi

echo "🎉 Python setup completed!"
