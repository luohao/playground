#!/usr/bin/env bash
set -euo pipefail

# Ensure user's local bin is in PATH
export PATH="$HOME/.local/bin:$PATH"

# Ensure pipx exists (install as user if not present)
if ! command -v pipx >/dev/null 2>&1; then
  python -m pip install --user pipx
  export PATH="$HOME/.local/bin:$PATH"
fi

# Ensure uv is installed via pipx
if ! command -v uv >/dev/null 2>&1; then
  pipx install --force uv || true
fi

# If python folder exists, create venv and install deps
if [ -d "/workspaces/playground/python" ]; then
  cd /workspaces/playground/python
  export PATH="$HOME/.local/bin:$PATH"
  if command -v uv >/dev/null 2>&1; then
    uv venv create .venv || true
    uv install || true
  else
    python -m venv .venv
    # shellcheck disable=SC1091
    . .venv/bin/activate
    if [ -f requirements.txt ]; then
      pip install -r requirements.txt || true
    fi
  fi
fi

echo "post-create: uv setup complete"
