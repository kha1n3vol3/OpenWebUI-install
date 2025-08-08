#!/bin/bash
echo "Setting venv..."
# Activate the virtual environment

source .venv/bin/activate

Echo "Updating project with uv pip..."
uv pip install --upgrade $(uv pip freeze)

uv pip install open-webui -U
uv cache prune
Echo "Serving local UI..."
open-webui serve

# Deactivate the virtual environment
deactivate
echo "Exiting venv"
