#!/bin/bash

# Document Organizer Script

# Configuration
source_directory="/home/koketso/Downloads"
documents_directory="/home/koketso/Documents"

# Check if source directory exists
if [ ! -d "$source_directory" ]; then
    echo "Source directory does not exist. Exiting."
    exit 1
fi

# Check if Documents directory exists, create if not
if [ ! -d "$documents_directory" ]; then
    mkdir -p "$documents_directory"
fi

# Array of document file extensions
document_extensions=("pdf" "docx" "txt")

# Organize document files
for extension in "${document_extensions[@]}"; do
    # Create directory if it doesn't exist
    mkdir -p "$documents_directory/$extension"

    # Move files with the specified extension
    mv "$source_directory"/*.$extension "$documents_directory/$extension/"
    echo "Moved: *.$extension to $documents_directory/$extension/"
done

echo "Document organization completed."

