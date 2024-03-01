# Makefile

pre-commit: setup-pre-commit update-pre-commit

pre-commit-setup:
	pre-commit install

pre-commit-update:
	pre-commit autoupdate
