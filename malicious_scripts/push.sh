#!/bin/bash
#This Bash script automates the process of committing and pushing a new file inside a folder to a Git repository(Pushed_file)

echo "Marking repository as safe..."
git config --global --add safe.directory "$GITHUB_WORKSPACE"

echo "Setting up Git user..."
git config user.name "ir-paras-oli"
git config user.email "paras.oli@invisirisk.com"

echo "Creating a folder and adding a file..."
mkdir -p new_folder
echo "Some new content" > Pushed_file/new6-file.txt

git add new_folder/new6-file.txt
git commit -m "Add a new file inside new_folder"

echo "Pushing changes to the STAGE branch..."
git remote set-url origin https://x-access-token:${{ secrets.GITHUB_TOKEN }}@github.com/${{ github.repository }}.git
git push origin STAGE
