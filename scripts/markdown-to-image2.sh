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

    # Extract the directory and basename of the Markdown file
    dir=$(dirname "$mdfile")
    basename=$(basename "$mdfile" .md)

    # Convert Markdown to HTML
    htmlfile="${dir}/${basename}.html"
    pandoc "$mdfile" -c "$CSS_FILE" -s -o "$htmlfile"

    # Convert HTML to image
    imgfile="${dir}/${basename}.png"
    wkhtmltoimage "$htmlfile" "$imgfile"

    # Check if image conversion was successful
    if [ ! -f "$imgfile" ]; then
        echo "Failed to convert $htmlfile to image"
        rm "$htmlfile"
        continue
    fi

    # Create caption image with the basename as the text
    captionfile="${dir}/${basename}_caption.png"
    convert -background black -fill white -gravity center -size "$(identify -format '%w' "$imgfile")x100" \
        caption:"$basename" "$captionfile"

    # Check if caption creation was successful
    if [ ! -f "$captionfile" ]; then
        echo "Failed to create caption image for $basename"
        rm "$htmlfile" "$imgfile"
        continue
    fi

    # Combine the caption image and the converted image
    finalimgfile="${dir}/${basename}.png"
    convert "$captionfile" "$imgfile" -gravity north -append "$finalimgfile"

    # Clean up intermediate files
    rm "$htmlfile" "$captionfile"

    echo "Converted $mdfile to $finalimgfile"
done
