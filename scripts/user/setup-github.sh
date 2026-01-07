#!/bin/sh

# Verifying dependencies
command -v git >/dev/null 2>&1 || {
    echo "ERROR: No git was found"
    exit 1
}

command -v gh >/dev/null 2>&1 || {
    echo "ERROR: No gh was found"
    exit 1
}

# GH authentication
echo "Starting GitHub CLI authentication..."
gh auth login

echo "Verifying GitHub CLI authentication..."
gh auth status || {
    echo "GitHub authentication failed"
    exit 1
}

echo "Authentication to Github completed"
