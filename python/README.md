# Python folder

This folder contains a small example Python project. It's configured so you can manage the virtual environment and dependencies using `uv` (recommended) or with the standard `venv` + `pip` fallback.

Quick start

1. Install `uv` (recommended):

   - `pipx install uv`  # or `pip install --user uv`

2. Create a venv and install deps:

   - With `uv`:
     - `uv venv create .venv`
     - `uv install`

   - Fallback:
     - `python -m venv .venv`
     - `source .venv/bin/activate`
     - `pip install -r requirements.txt`

3. Run the example:

   - `python -m python_app.main`

Notes

- If you prefer a project-managed layout, `pyproject.toml` is present.
- `uv` may provide shortcuts such as `uv shell` to spawn a shell inside the venv.
