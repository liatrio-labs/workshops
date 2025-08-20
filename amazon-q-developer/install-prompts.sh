#!/bin/bash

# Amazon Q Developer Workshop Prompts Installer
# This script copies prompt files to ~/.aws/amazonq/prompts/ with user confirmation

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Source and destination directories
SOURCE_DIR="./prompts"
DEST_DIR="$HOME/.aws/amazonq/prompts"

echo -e "${BLUE}Amazon Q Developer Workshop Prompts Installer${NC}"
echo "=============================================="
echo ""

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "${RED}Error: Source directory '$SOURCE_DIR' not found!${NC}"
    echo "Please run this script from the workshop root directory."
    exit 1
fi

# Create destination directory if it doesn't exist
if [ ! -d "$DEST_DIR" ]; then
    echo -e "${YELLOW}Creating directory: $DEST_DIR${NC}"
    mkdir -p "$DEST_DIR"
    echo -e "${GREEN}Directory created successfully.${NC}"
    echo ""
fi

# Function to prompt user for confirmation
confirm_copy() {
    local file="$1"
    local dest_file="$2"
    
    echo -e "${BLUE}File:${NC} $file"
    
    # Check if destination file already exists
    if [ -f "$dest_file" ]; then
        echo -e "${YELLOW}Warning: File already exists at destination!${NC}"
        echo -e "${YELLOW}Destination:${NC} $dest_file"
        echo ""
        read -p "Skip this file? (y/N): " -n 1 -r
        echo ""
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            echo -e "${YELLOW}Skipped: $file${NC}"
            return 1
        else
            echo -e "${RED}Aborted: Will not overwrite existing file${NC}"
            return 1
        fi
    fi
    
    echo -e "${BLUE}Destination:${NC} $dest_file"
    echo ""
    read -p "Copy this file? (Y/n): " -n 1 -r
    echo ""
    
    if [[ $REPLY =~ ^[Nn]$ ]]; then
        echo -e "${YELLOW}Skipped: $file${NC}"
        return 1
    fi
    
    return 0
}

# Counter for statistics
total_files=0
copied_files=0
skipped_files=0

echo -e "${BLUE}Found prompt files:${NC}"
echo ""

# Process each .md file in the prompts directory
for file in "$SOURCE_DIR"/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        dest_file="$DEST_DIR/$filename"
        total_files=$((total_files + 1))
        
        if confirm_copy "$filename" "$dest_file"; then
            cp "$file" "$dest_file"
            echo -e "${GREEN}Copied: $filename${NC}"
            copied_files=$((copied_files + 1))
        else
            skipped_files=$((skipped_files + 1))
        fi
        echo ""
    fi
done

# Summary
echo "=============================================="
echo -e "${BLUE}Installation Summary:${NC}"
echo "Total files found: $total_files"
echo -e "${GREEN}Files copied: $copied_files${NC}"
echo -e "${YELLOW}Files skipped: $skipped_files${NC}"
echo ""

if [ $copied_files -gt 0 ]; then
    echo -e "${GREEN}Prompts successfully installed to:${NC}"
    echo "$DEST_DIR"
    echo ""
    echo -e "${BLUE}You can now use these prompts in Amazon Q Developer with:${NC}"
    echo "@project-user-stories, @project-architecture-options, @dev, etc."
else
    echo -e "${YELLOW}No files were copied.${NC}"
fi

echo ""
echo -e "${BLUE}Installation complete!${NC}"
