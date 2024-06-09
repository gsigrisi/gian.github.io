#!/bin/bash

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
# pushd public
# Add changes to git.
git add .

# Commit changes.
msg=":rocket: Deploying website `date '+%Y-%m-%d %H:%M:%S'`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push

# Come Back up to the Project Root
# popd

