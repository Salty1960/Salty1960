#!/bin/bash

# Installation script for Git PAT Terminal Form
# This script helps install and setup the git-pat-terminal tool

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_color() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

print_color $BLUE "Installing Git PAT Terminal Form..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    print_color $RED "Error: Git is not installed. Please install Git first."
    exit 1
fi

# Check if curl is installed
if ! command -v curl &> /dev/null; then
    print_color $RED "Error: curl is not installed. Please install curl first."
    exit 1
fi

# Create bin directory if it doesn't exist
BIN_DIR="$HOME/bin"
if [ ! -d "$BIN_DIR" ]; then
    mkdir -p "$BIN_DIR"
    print_color $YELLOW "Created $BIN_DIR directory"
fi

# Copy the main script
SCRIPT_PATH="$BIN_DIR/git-pat-terminal"
cp "git-pat-terminal.sh" "$SCRIPT_PATH"
chmod +x "$SCRIPT_PATH"

print_color $GREEN "✓ Installed git-pat-terminal to $SCRIPT_PATH"

# Check if ~/bin is in PATH
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    print_color $YELLOW "Warning: $HOME/bin is not in your PATH"
    print_color $YELLOW "Add the following line to your ~/.bashrc or ~/.zshrc:"
    print_color $CYAN "export PATH=\"\$HOME/bin:\$PATH\""
    echo
fi

print_color $GREEN "Installation completed!"
print_color $BLUE "Usage:"
print_color $CYAN "  $SCRIPT_PATH"
print_color $CYAN "  or (if ~/bin is in PATH): git-pat-terminal"
echo