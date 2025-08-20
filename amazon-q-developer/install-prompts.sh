#!/bin/bash

# Amazon Q Developer Workshop Prompts Installer
# This script copies prompt files to ~/.aws/amazonq/prompts/

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

# Count files and check for existing files
total_files=0
existing_files=0
files_to_copy=()

echo -e "${BLUE}Analyzing prompt files...${NC}"
for file in "$SOURCE_DIR"/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        dest_file="$DEST_DIR/$filename"
        total_files=$((total_files + 1))
        
        if [ -f "$dest_file" ]; then
            existing_files=$((existing_files + 1))
            echo -e "${YELLOW}  ⚠️  $filename (already exists)${NC}"
        else
            files_to_copy+=("$file")
            echo -e "${GREEN}  ✓  $filename${NC}"
        fi
    fi
done

echo ""
echo -e "${BLUE}Installation Plan:${NC}"
echo "  • Source: $SOURCE_DIR"
echo "  • Destination: $DEST_DIR"
echo "  • Total files found: $total_files"
echo "  • Files to copy: $((total_files - existing_files))"
if [ $existing_files -gt 0 ]; then
    echo -e "  • ${YELLOW}Existing files (will be skipped): $existing_files${NC}"
fi
echo ""

# Create destination directory if it doesn't exist
if [ ! -d "$DEST_DIR" ]; then
    echo -e "${YELLOW}Creating directory: $DEST_DIR${NC}"
    mkdir -p "$DEST_DIR"
    echo -e "${GREEN}Directory created successfully.${NC}"
    echo ""
fi

# Ask for confirmation to proceed
if [ ${#files_to_copy[@]} -eq 0 ]; then
    echo -e "${YELLOW}All prompt files already exist at destination.${NC}"
    echo -e "${BLUE}No files need to be copied.${NC}"
    exit 0
fi

read -p "Proceed with installation? (Y/n): " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Nn]$ ]]; then
    echo -e "${YELLOW}Installation cancelled.${NC}"
    exit 0
fi

echo ""
echo -e "${BLUE}Installing prompts...${NC}"

# Copy all files at once
copied_files=0
for file in "${files_to_copy[@]}"; do
    filename=$(basename "$file")
    dest_file="$DEST_DIR/$filename"
    
    cp "$file" "$dest_file"
    echo -e "${GREEN}  ✓ Copied: $filename${NC}"
    copied_files=$((copied_files + 1))
done

echo ""
echo "=============================================="
echo -e "${BLUE}Installation Summary:${NC}"
echo "Total files found: $total_files"
echo -e "${GREEN}Files copied: $copied_files${NC}"
echo -e "${YELLOW}Files skipped: $existing_files${NC}"
echo ""

if [ $copied_files -gt 0 ]; then
    echo -e "${GREEN}Prompts successfully installed to:${NC}"
    echo "$DEST_DIR"
    echo ""
    echo -e "${BLUE}You can now use these prompts in Amazon Q Developer with:${NC}"
    echo "@project-user-stories, @project-architecture-options, @dev, etc."
fi

echo ""
echo -e "${BLUE}Installation complete!${NC}"
