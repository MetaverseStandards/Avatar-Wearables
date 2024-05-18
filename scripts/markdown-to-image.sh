#!/bin/bash

# Check if at least two arguments are provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 css_file markdown_file1 [markdown_file2 ...]"
    exit 1
fi

# First argument is the CSS file
CSS_FILE="$1"
shift

# Check if the CSS file exists
if [ ! -f "$CSS_FILE" ]; then
    echo "CSS file $CSS_FILE not found!"
    exit 1
fi

# Iterate over the remaining arguments, which are the Markdown files
for mdfile in "$@"; do
    # Check if the Markdown file exists
    if [ ! -f "$mdfile" ]; then
        echo "Markdown file $mdfile not found!"
        continue
    fi

    # Convert Markdown to HTML
    htmlfile="${mdfile%.md}.html"
    pandoc "$mdfile" -c "$CSS_FILE" -s -o "$htmlfile"

    # Convert HTML to image
    imgfile="${mdfile%.md}.png"
    wkhtmltoimage "$htmlfile" "$imgfile"

    # Optional: Remove the intermediate HTML file
    rm "$htmlfile"

    echo "Converted $mdfile to $imgfile"
done
