#!/bin/bash
# Install Python 3.11
uv python install 3.11

# Create venv with Python 3.11
uv venv --python 3.11

# Activate the virtual environment
source .venv/bin/activate

# Install required libraries
uv pip install openai requests pydantic
uv pip install open-webui
uv pip install groq


# Deactivate the virtual environment
deactivate
