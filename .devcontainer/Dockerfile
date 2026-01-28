FROM mcr.microsoft.com/devcontainers/python:1-3.11
ENV DEBIAN_FRONTEND=noninteractive

# Upgrade pip and install pipx into the root user's local bin
RUN python -m pip install --upgrade pip \
 && python -m pip install --no-cache-dir pipx \
 && /root/.local/bin/pipx ensurepath || true

# Add pipx bin to PATH so pipx-installed tools are available
ENV PATH=/root/.local/bin:$PATH

# Install `uv` via pipx so it's available globally in the container
RUN pipx install --force uv || true
