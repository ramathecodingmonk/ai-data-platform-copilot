.PHONY: help setup install test lint format clean run docker-build docker-run 
week-status progress check env freeze

PYTHON := python3
PIP := $(PYTHON) -m pip
VENV := .venv
VENV_BIN := $(VENV)/bin

help:
@echo ""
@echo "GenAI KodeKloud Lab"
@echo ""
@echo "Setup:"
@echo "  make setup          Create virtual environment and install dependencies"
@echo "  make install        Install Python dependencies"
@echo "  make env            Create .env from .env.example"
@echo ""
@echo "Development:"
@echo "  make test           Run tests"
@echo "  make lint           Run lint checks"
@echo "  make format         Format Python code"
@echo "  make check          Run lint + tests"
@echo "  make run            Start local application"
@echo ""
@echo "Docker:"
@echo "  make docker-build   Build Docker image"
@echo "  make docker-run     Run Docker container"
@echo ""
@echo "Progress:"
@echo "  make progress       Show progress tracker"
@echo "  make week-status    Show weekly status"
@echo ""
@echo "Maintenance:"
@echo "  make freeze         Export Python dependencies"
@echo "  make clean          Remove generated files"
@echo ""

setup:
$(PYTHON) -m venv $(VENV)
$(VENV_BIN)/python -m pip install --upgrade pip
$(VENV_BIN)/pip install -r requirements.txt
@echo ""
@echo "Environment created."
@echo "Activate with:"
@echo "source .venv/bin/activate"

install:
$(PIP) install -r requirements.txt

env:
@if [ ! -f .env ]; then 
cp .env.example .env; 
echo ".env created from .env.example"; 
else 
echo ".env already exists"; 
fi

test:
$(VENV_BIN)/pytest -v

lint:
$(VENV_BIN)/ruff check .

format:
$(VENV_BIN)/ruff format .

check: lint test

run:
$(VENV_BIN)/uvicorn api.main:app --reload --host 0.0.0.0 --port 8000

docker-build:
docker build -t genai-kodekloud:latest .

docker-run:
docker run --rm -p 8000:8000 --env-file .env genai-kodekloud:latest

progress:
@cat progress/12-week-tracker.md

week-status:
@echo "======================================"
@echo "       GENAI LAB WEEKLY STATUS"
@echo "======================================"
@grep -E "^## Week|^| [0-9]+ |" progress/12-week-tracker.md || true

freeze:
$(VENV_BIN)/pip freeze > requirements-lock.txt

clean:
find . -type d -name "**pycache**" -prune -exec rm -rf {} +
find . -type d -name ".pytest_cache" -prune -exec rm -rf {} +
find . -type d -name ".ruff_cache" -prune -exec rm -rf {} +
find . -type f -name "*.pyc" -delete
@echo "Cleaned generated Python files."
