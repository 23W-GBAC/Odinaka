#!/bin/bash

# Define paths
Local="/mnt/c/Users/user/Downloads/$e.jpg"  # Path to the local image file
Repo="~/Odinaka/images/"                     # Path to the repository directory

# Copy image to the repository directory
cp "/mnt/c/Users/user/Downloads/Heart.jpg" ~/Odinaka/images/

# Change directory to the repository
cd ~/Odinaka

# Add all changes to the staging area
git add .

# Commit changes with a descriptive message
git commit -am "Add image"

# Push changes to the remote repository (assuming the branch is 'main')
git push origin main

# Display success message
echo "Image has been uploaded successfully"
