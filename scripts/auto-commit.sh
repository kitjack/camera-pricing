#!/bin/bash

# Auto-commit script for CameraPricing website
# This script checks for changes and automatically commits and pushes them

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}🔍 Checking for changes...${NC}"

# Navigate to project directory
cd "$(dirname "$0")/.."

# Check if there are any changes
if [[ -n $(git status --porcelain) ]]; then
    echo -e "${YELLOW}📝 Changes detected. Creating automatic commit...${NC}"
    
    # Get current timestamp
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    
    # Add all changes
    git add .
    
    # Create commit message with timestamp and file changes
    CHANGED_FILES=$(git diff --cached --name-only | head -10)
    if [[ $(echo "$CHANGED_FILES" | wc -l) -gt 10 ]]; then
        FILES_MSG="Updated $(git diff --cached --name-only | wc -l) files"
    else
        FILES_MSG="Updated: $(echo "$CHANGED_FILES" | tr '\n' ', ' | sed 's/, $//')"
    fi
    
    COMMIT_MSG="Auto-commit: $FILES_MSG

Timestamp: $TIMESTAMP
Changes committed automatically by auto-commit script."
    
    # Commit the changes
    git commit -m "$COMMIT_MSG"
    
    # Push to remote
    echo -e "${YELLOW}🚀 Pushing changes to GitHub...${NC}"
    git push origin main
    
    echo -e "${GREEN}✅ Changes successfully committed and pushed!${NC}"
    echo -e "${GREEN}📊 Commit details:${NC}"
    git log --oneline -1
else
    echo -e "${GREEN}✅ No changes detected. Repository is up to date.${NC}"
fi