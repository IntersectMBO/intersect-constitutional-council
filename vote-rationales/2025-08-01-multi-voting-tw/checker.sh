#!/usr/bin/env bash

# Usage: ./validate_json.sh input.json

FILE="$1"

if [[ ! -f "$FILE" ]]; then
  echo "❌ File not found: $FILE"
  exit 1
fi

# Extract committee keys
committee_keys=$(jq -r 'keys[]' "$FILE")

error_found=0

for committee in $committee_keys; do

  # Extract transaction keys
  tx_keys=$(jq -r ".[\"$committee\"] | keys[]" "$FILE")

  for tx in $tx_keys; do
    echo " "
    echo "  Checking vote: $tx"

    # Extract fields
    dataHash=$(jq -r ".[\"$committee\"][\"$tx\"].anchor.dataHash" "$FILE")
    url=$(jq -r ".[\"$committee\"][\"$tx\"].anchor.url" "$FILE")
    decision=$(jq -r ".[\"$committee\"][\"$tx\"].decision" "$FILE")

    # check if data at URL matches dataHash
    hosted_hash=$(cardano-cli hash anchor-data --url "$url")
    if [[ "$hosted_hash" != "$dataHash" ]]; then
      echo "    ❌ Data at URL does not match dataHash: $dataHash vs $hosted_hash"
      error_found=1
    else
      echo "    ✅ Data at URL matches dataHash: $dataHash"
    fi

    # get the CID
    url=$(jq -r ".[\"$committee\"][\"$tx\"].anchor.url" "$FILE")
    cid=${url:7}

    # download the file from the URL to temp directory
    temp_dir=$(mktemp -d)
    if ! curl -s -o "$temp_dir/$cid" "https://ipfs.io/ipfs/$cid"; then
        echo "    ❌ Failed to download file from URL: $url"
        error_found=1
    else
        echo "    ✅ Successfully downloaded file from URI: $url"
        
    fi

    # check if body.govActionId matches the tx key
    body_govActionID=$(jq -r ".body.govActionId" "$temp_dir/$cid")
    if [[ "$body_govActionID" != "$tx" ]]; then
      echo "    ❌ body.govActionId does not match tx key: $body_govActionID vs $tx"
      error_found=1
    else
      echo "    ✅ body.govActionId matches tx key: $body_govActionID"
    fi

  done
done

if [[ $error_found -eq 0 ]]; then
  echo "✅ All validations passed successfully!"
else
  echo "⚠️ Validation completed with errors."
  exit 1
fi