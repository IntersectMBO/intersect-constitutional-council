#!/bin/bash

set -euo pipefail

# Hardcoded JSON Schema URL

# change this later once CIP-136 PR is merged (https://github.com/cardano-foundation/CIPs/pull/1041)
# SCHEMA_URL="https://raw.githubusercontent.com/cardano-foundation/CIPs/d60b0316219fe48302fa30d965791ecb11ddfc58/CIP-0136/cip-136.common.schema.json"
SCHEMA_URL="https://raw.githubusercontent.com/cardano-foundation/CIPs/d60b0316219fe48302fa30d965791ecb11ddfc58/CIP-0136/cip-136.common.schema.json"

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <jsonld-file>"
    exit 1
fi

INPUT_FILE="$1"
TMP_JSON_FILE=""

# If the file ends with .jsonld, create a temporary .json copy (overwrite if exists)
if [[ "$INPUT_FILE" == *.jsonld ]]; then
    if [ ! -f "$INPUT_FILE" ]; then
        echo "Error: File '$INPUT_FILE' does not exist."
        exit 1
    fi
    TMP_JSON_FILE="/tmp/rationale.json"
    cp -f "$INPUT_FILE" "$TMP_JSON_FILE"
    JSON_FILE="$TMP_JSON_FILE"
else
    JSON_FILE="$INPUT_FILE"
fi

# Check if the file exists
if [ ! -f "$JSON_FILE" ]; then
    echo "Error: File '$JSON_FILE' does not exist."
    [ -n "$TMP_JSON_FILE" ] && rm -f "$TMP_JSON_FILE"
    exit 1
fi

# Check if the file is valid JSON
if ! jq empty "$JSON_FILE" >/dev/null 2>&1; then
    echo "Error: '$JSON_FILE' is not valid JSON."
    [ -n "$TMP_JSON_FILE" ] && rm -f "$TMP_JSON_FILE"
    exit 1
fi

# Pull the schema from the URL (suppress curl output)
TMP_SCHEMA="/tmp/cip-136-schema.json"
curl -sSfSL "$SCHEMA_URL" -o "$TMP_SCHEMA"

# Check if the schema was retrieved and is valid JSON
if [ ! -s "$TMP_SCHEMA" ] || ! jq empty "$TMP_SCHEMA" >/dev/null 2>&1; then
    echo "Error: Failed to retrieve or parse schema from $SCHEMA_URL"
    rm -f "$TMP_SCHEMA"
    [ -n "$TMP_JSON_FILE" ] && rm -f "$TMP_JSON_FILE"
    exit 1
fi

# Basic spell check on key data fields (requires 'aspell' installed)
if command -v aspell >/dev/null 2>&1; then
    echo "Spell check warnings:"
    # List of fields to check
    for field in summary rationaleStatement precedentDiscussion counterargumentDiscussion conclusion; do
        # Extract field text
        text=$(jq -r ".body.$field // empty" "$JSON_FILE")
        if [ -n "$text" ]; then
            # Use aspell to check spelling, output only misspelled words
            echo "$text" | aspell list | sort -u | while read -r word; do
                if [ -n "$word" ]; then
                    echo "  Possible misspelling in '$field': $word"
                fi
            done
        fi
    done
else
    echo "Warning: aspell not found, skipping spell check."
fi


echo " "
echo "Validating JSON file against schema '$SCHEMA_URL'..."
echo " "

# Validate JSON against the schema
ajv validate -s "$TMP_SCHEMA" -d "$JSON_FILE" --all-errors --strict=true
RESULT=$?

# Clean up temporary files
rm -f "$TMP_SCHEMA"
rm -f "$TMP_JSON_FILE"

echo "done"

exit $RESULT