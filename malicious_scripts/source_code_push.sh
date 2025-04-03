#!/bin/bash
# This Bash script automates the process of committing and pushing a new file inside a folder to a Git repository(Pushed_file)
# Demonstrates the use of Source Code Push policy.

echo "Marking repository as safe..."
git config --global --add safe.directory "$GITHUB_WORKSPACE"

echo "Setting up Git user..."
git config user.name "John Doe"
git config user.email "john.doe@example.com"

echo "Creating a folder and adding a file..."
mkdir -p downloads
echo "Some new content" > downloads/new6-file.txt

git add downloads/new6-file.txt
git commit -m "Add a new file inside downloads"

echo "Pushing changes to the main branch..."
git remote set-url origin https://x-access-token:${{ secrets.GITHUB_TOKEN }}@github.com/${{ github.repository }}.git
git push origin main
