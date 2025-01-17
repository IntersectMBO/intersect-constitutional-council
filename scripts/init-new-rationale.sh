#!/bin/bash

set -euo pipefail

# Get today's date in YYYY-MM-DD format
TODAY=$(date +"%Y-%m-%d")

# Optional argument for rationale name
EXTRA_NAME="${1:-}"
if [[ -n "$EXTRA_NAME" ]]; then
  RATIONAL_DIR="./vote-rationales/${TODAY}-${EXTRA_NAME}"
else
  RATIONAL_DIR="./vote-rationales/${TODAY}"
fi

# Check if rationale directory already exists
if [[ -d "$RATIONAL_DIR" ]]; then
  echo "Error: Directory $RATIONAL_DIR already exists."
  exit 1
fi

# Create the new directory (including parents if needed)
mkdir -p "$RATIONAL_DIR"

# Copy the rationale template file into the new directory
cp ./scripts/templates/template-rationale.jsonld "$RATIONAL_DIR/rationale.jsonld"

# Copy the readme template file into the new directory
cp ./scripts/templates/template-readme.md "$RATIONAL_DIR/README.md"

echo "Created $(realpath "$RATIONAL_DIR") and copied templates into it."