VERSION ?= $(shell dunamai from git --style pep440 --format "{base}.dev{distance}+{commit}")

install-dev:
	poetry install --with dev --extras "tensorflow h5py"
	pre-commit install

install:
	poetry install

install-prod:
	poetry install --with prod

install-test:
	poetry install --with test --extras "tensorflow h5py"

clean:
	pip uninstall modelscan

test:
	poetry run pytest

build:
	poetry build

build-prod: version
	poetry build

version:
	echo "__version__ = '$(VERSION)'" > modelscan/_version.py
	poetry version $(VERSION)

lint: bandit mypy

bandit:
	poetry run bandit -c pyproject.toml -r .

mypy:
	poetry run mypy --ignore-missing-imports --strict --check-untyped-defs .

format:
	black .

coverage:
	poetry run pytest -q --cov=./
