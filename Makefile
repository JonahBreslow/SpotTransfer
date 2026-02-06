.PHONY: setup run

setup:
	cp -n backend/.env.example backend/.env || true
	cp -n frontend/.env.example frontend/.env || true
	cd backend && uv sync
	@command -v npm >/dev/null 2>&1 || { echo "npm not found. Installing Node.js with npm..."; \
		if command -v brew >/dev/null 2>&1; then \
			brew install node; \
		else \
			echo "Please install Node.js from https://nodejs.org/"; \
			exit 1; \
		fi; }
	cd frontend && npm install

run:
	@echo "Starting backend and frontend servers..."
	@trap 'kill 0' EXIT; \
	cd backend && uv run python main.py & \
	cd frontend && npm run dev & \
	wait
