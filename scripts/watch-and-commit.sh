#!/bin/bash

# File watcher script that automatically commits changes
# This script watches for file changes and auto-commits them

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🔍 Starting file watcher for auto-commit...${NC}"
echo -e "${YELLOW}📁 Watching directory: $(pwd)${NC}"
echo -e "${YELLOW}⏱️  Will check for changes every 30 seconds${NC}"
echo -e "${RED}🛑 Press Ctrl+C to stop watching${NC}"
echo ""

# Navigate to project directory
cd "$(dirname "$0")/.."

# Function to handle cleanup on script exit
cleanup() {
    echo -e "\n${YELLOW}🛑 Stopping file watcher...${NC}"
    exit 0
}

# Set up trap to catch Ctrl+C
trap cleanup SIGINT SIGTERM

# Watch for changes in a loop
while true; do
    # Run the auto-commit script
    ./scripts/auto-commit.sh
    
    # Wait 30 seconds before checking again
    echo -e "${BLUE}⏳ Waiting 30 seconds before next check...${NC}"
    echo ""
    sleep 30
done