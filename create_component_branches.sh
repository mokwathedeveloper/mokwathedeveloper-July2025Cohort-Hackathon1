#!/bin/bash

# Exit on error
set -e

# Initialize git and commit all files
echo "Initializing git repository..."
git init
git config user.name "mokwathedeveloper"
git config user.email "moffatmokwa12@gmail.com"
git add .
git commit -m "Initial commit - full portfolio"
git branch -M main

# Set GitHub remote to your actual repo
REMOTE_URL="https://github.com/mokwathedeveloper/mokwathedeveloper-July2025Cohort-Hackathon1.git"
echo "Setting remote to $REMOTE_URL"
git remote set-url origin "$REMOTE_URL" || git remote add origin "$REMOTE_URL"
git push -u origin main

# Function to create and push branches from component zips
create_branch() {
  COMPONENT=$1
  ZIP_NAME="${COMPONENT}_component.zip"

  echo "Creating feature branch for $COMPONENT..."
  git checkout -b feature/$COMPONENT

  echo "Cleaning folder (except .git)..."
  find . -mindepth 1 ! -regex '^./\.git\(/.*\)?' -delete

  echo "Extracting $ZIP_NAME..."
  unzip $ZIP_NAME -d .

  git add .
  git commit -m "Add $COMPONENT component with styles"
  git push -u origin feature/$COMPONENT

  echo "✅ Branch 'feature/$COMPONENT' pushed."
}

# Create branches
create_branch "navbar"
git checkout main

create_branch "hero"
git checkout main

create_branch "footer"
git checkout main

# Final message
echo ""
echo "All component branches created and pushed successfully!"
echo " Visit your repo: https://github.com/mokwathedeveloper/mokwathedeveloper-July2025Cohort-Hackathon1.git"
echo ""
echo " Add this description manually:"
echo "Elite Personal Portfolio built with HTML5 and advanced CSS3 (scroll-triggered animations, 3D hover effects, glassmorphism). Built for PLP July 2025 Hackathon."
echo ""
echo "🏷 Tags: portfolio, html5, css3, responsive-design, animations, personal-site"

am getting this error 
