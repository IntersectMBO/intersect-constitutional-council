#!/bin/bash

# Function to extract fields from the JSON-LD file
extract_jsonld_data() {
    local jsonld_file=$1

    # Extract the data fields using jq
    local summary=$(jq -r '.body.summary // empty' "$jsonld_file")
    local rationaleStatement=$(jq -r '.body.rationaleStatement // empty' "$jsonld_file")
    local precedentDiscussion=$(jq -r '.body.precedentDiscussion // empty' "$jsonld_file")
    local counterargumentDiscussion=$(jq -r '.body.counterargumentDiscussion // empty' "$jsonld_file")
    local conclusion=$(jq -r '.body.conclusion // empty' "$jsonld_file")
    local authors=$(jq '.authors // empty' "$jsonld_file")

    # Extract the internalVote data
    local constitutional=$(jq -r '.body.internalVote.constitutional // empty' "$jsonld_file")
    local unconstitutional=$(jq -r '.body.internalVote.unconstitutional // empty' "$jsonld_file")
    local abstain=$(jq -r '.body.internalVote.abstain // empty' "$jsonld_file")
    local didNotVote=$(jq -r '.body.internalVote.didNotVote // empty' "$jsonld_file")
    local againstVote=$(jq -r '.body.internalVote.againstVote // empty' "$jsonld_file")

    # Extract the references and format them
    local references=$(jq -r '.body.references[] | "- [\(.label)](\(.uri))" // empty' "$jsonld_file")

    # Output to a markdown file
    local output_file="${jsonld_file}.md"

    # Create markdown content
    cat > "$output_file" <<EOF

# Summary

$summary

# Rationale Statement

$rationaleStatement

# Precedent Discussion

$precedentDiscussion

# Counterargument Discussion

$counterargumentDiscussion

# Conclusion

$conclusion

# Internal Vote

- Constitutional: $constitutional
- Unconstitutional: $unconstitutional
- Abstain: $abstain
- Did Not Vote: $didNotVote
- Against Voting: $againstVote

# References

$references

# Authors

$authors

EOF

echo "Markdown file generated: $output_file"

}

# Check if a file or directory is passed as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file or directory>"
    exit 1
fi

# If the argument is a process
if [ -f "$1" ]; then
    # If it's a single file, process it
    extract_jsonld_data "$1"
else
    echo "Invalid input. Please provide a valid file or directory."
    exit 1
fi