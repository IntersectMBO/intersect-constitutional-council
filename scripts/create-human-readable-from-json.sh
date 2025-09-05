#!/bin/bash

# Function to extract fields from the JSON-LD file
extract_jsonld_data() {
    local jsonld_file=$1
    local generate_pdf=$2

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
    local output_dir=$(dirname "$(dirname "$jsonld_file")")
    local file_name=$(basename "$jsonld_file")
    # local output_file="${output_dir}/markdowns/${file_name}.md"
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

    # Generate PDF only if flag is set
    if [ "$generate_pdf" = true ]; then
        # Check if pandoc is installed
        if command -v pandoc >/dev/null 2>&1; then
            pdf_output="${output_file%.md}.pdf"
            pandoc "$output_file" -o "$pdf_output"
            if [ $? -eq 0 ]; then
                echo "PDF file generated: $pdf_output"
            else
                echo "Error: Failed to generate PDF from markdown."
            fi
        else
            echo "Warning: pandoc not found. PDF not generated."
        fi
    fi
}

# Usage message
usage() {
    echo "Usage: $0 [-pdf] <file>"
    echo "  -pdf    Generate PDF output (requires pandoc)"
    exit 1
}

# PDF Parse flag
generate_pdf=false
if [ "$1" = "-pdf" ]; then
    generate_pdf=true
    shift
fi

# Check if a file is passed as an argument
if [ $# -eq 0 ]; then
    usage
fi

if [ -f "$1" ]; then
    extract_jsonld_data "$1" $generate_pdf
else
    echo "Invalid input. Please provide a valid file."
    exit 1
fi