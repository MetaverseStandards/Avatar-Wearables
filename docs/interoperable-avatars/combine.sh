#!/bin/bash

# Create the out folder if it doesn't exist
mkdir -p out

# Create a temporary file to store the combined notes
temp_file=$(mktemp)

# Function to add header and separator to the combined notes file
add_header_and_separator() {
    local filename="$1"
    local separator="$2"
    echo -e "$separator\n# Interoperable Avatars Characters Group $filename\n$separator" >> "$temp_file"
}

# Find all text files recursively in current directory and its subdirectories
find . -type f -name "*.txt" | sort | while IFS= read -r file; do
    # Get the basename of the file (without the extension)
    base=$(basename -s .txt "$file")

    # Add header and separator
    add_header_and_separator "$base" "\n------------------------------\n"

    # Append the content of the original file to the temporary file
    cat "$file" >> "$temp_file"
done

# Append the content of the temporary file to the output file
cat "$temp_file" > "out/combined_notes.txt"

# Clean up the temporary file
rm "$temp_file"

