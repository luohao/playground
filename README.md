# playground
Multi-language repository scaffold.

Python
- Directory: `python/`
- Use `uv` to manage virtual environments and dependencies (install via `pipx install uv`).

Quick setup

1. Install `uv` (recommended): `pipx install uv` or `pip install --user uv`
2. Change into the Python folder: `cd python`
3. Create a venv (uv or fallback):
	- With `uv`: `uv venv create .venv` (or `uv install` to sync deps)
	- Fallback: `python -m venv .venv` and `source .venv/bin/activate`
4. Install dependencies:
	- With `uv`: `uv install`
	- Fallback: `pip install -r requirements.txt`
5. Run the example: `python -m python_app.main`