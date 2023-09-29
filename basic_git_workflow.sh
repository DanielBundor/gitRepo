#!/bin/bash

# Git Workflow Script

# This script demonstrates a basic Git workflow, starting from initializing a Git repository,
# adding files to the staging area, committing changes, checking repository status,
# and viewing the commit history.

# Function to display a horizontal line for better output separation
horizontal_line() {
    echo "-------------------------------------------"
}

# Function to check if Git is installed
check_git_installed() {
    if ! command -v git &> /dev/null; then
        echo "Git is not installed. Please install Git before running this script."
        exit 1
    fi
}

# Function to initialize a Git repository
initialize_git_repository() {
    git init
    echo "Initialized a new Git repository."
    horizontal_line
}

# Function to add files to the staging area
add_files_to_staging_area() {
    git add index.html styles.css scripts.js
    echo "Added 'index.html', 'styles.css', and 'scripts.js' to the staging area."
    horizontal_line
}

# Function to commit changes with a message
commit_changes() {
    git commit -m "Initial commit"
    echo "Committed changes with message: 'Initial commit.'"
    horizontal_line
}

# Function to check the status of the Git repository
check_repository_status() {
    git status
    echo "Checked the status of the Git repository."
    horizontal_line
}

# Function to view commit history
view_commit_history() {
    git log
    echo "Viewed the commit history."
    horizontal_line
}

# Main execution starts here

# Check if Git is installed
check_git_installed

# Initialize a Git repository
initialize_git_repository

# Add files to the staging area
add_files_to_staging_area

# Commit changes with a message
commit_changes

# Check the status of the Git repository
check_repository_status

# View commit history
view_commit_history

